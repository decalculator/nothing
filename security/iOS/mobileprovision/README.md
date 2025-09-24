# But du programme
Le principe est simplement de signer une app IOS sans internet (avec un compte développeur gratuit).

# Idée
Pour signer un IPA, il faut un certificat (gratuit dans notre cas), un fichier "embedded.mobileprovision" propre à chaque application est ensuite obtenu.  
Ce programme permet d'extraire le fichier "embedded.mobileprovision" d'une app qui a déjà été installée.  
Il est ensuite possible de réutiliser ce fichier dans l'intervalle de sa validité pour signer une app sans internet (en modifiant les entitlements de l'app pour qu'elle corresponde à ceux du fichier "embedded.mobileprovision").  
Il est maintenant possible d'installer l'ipa signé hors-ligne avec ideviceinstaller (ou autre) (toujours sans connexion) sur un appareil isolé pour faire des tests sans être espionné, par exemple.  
(La machine qui installe avec ideviceinstaller doit par contre être aussi isolée sinon l'idée ne fonctionne plus).

# Limites
Si le certificat est gratuit, il ne sera plus possible d'utiliser le .mobileprovision après 7 jours.  
Donc dans une intervalle de 7 jours, il est possible d'installer (et surtout signer) une app de manière "anonyme" si vous le faites bien.  
Apple ne pourra pas voir si le certificat a été utilisé (après récupération du .mobileprovision) SI l'appareil iOS reste bien déconnecté.  
Mais Apple pourront toujours voir qu'un nouveau certificat a été généré.

# Etapes
1) Build le dylib
2) L'injecter dans une app
3) Récupérer le fichier "embedded.mobileprovision" avec idevicesyslog
4) Aligner les entitlements de notre .ipa sur ceux du .mobileprovision
5) Signer notre nouvel IPA hors-ligne avec isign par exemple (grâce à notre fichier .mobileprovision)
6) L'installer avec ideviceinstaller toujours sans internet
7) Done