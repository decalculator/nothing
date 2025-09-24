#import <Foundation/Foundation.h>

__attribute__((constructor))
static void entry() {
    @autoreleasepool
    {
        NSString *filename = @"embedded.mobileprovision";
        NSString *bundle_path = [[NSBundle mainBundle] bundlePath];

        NSError *error = nil;
        NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:bundle_path error:&error];

        for (NSString *file in files)
        {
            if ([file isEqualToString:filename])
            {
                NSLog(@"found > %@", file);

                NSString *file_path = [bundle_path stringByAppendingPathComponent:filename];
                NSData *file_data = [NSData dataWithContentsOfFile:file_path];

                if (file_data)
                {
                    const unsigned char *bytes = (const unsigned char *)[file_data bytes];
                    NSUInteger length = [file_data length];

                    for (NSUInteger i = 0; i < length; i += 16)
                    {
                        NSMutableString *line = [NSMutableString stringWithCapacity:16 * 3];

                        NSUInteger line_length = MIN(16, length - i);
                        for (NSUInteger j = 0; j < line_length; j++)
                        {
                            [line appendFormat:@"%02X ", bytes[i + j]];
                        }

                        NSLog(@"%@", line);
                    }
                }
            }
        }
    }
}