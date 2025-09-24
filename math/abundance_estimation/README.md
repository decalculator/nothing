# Estimation de l'abondance
## Méthode CMR
1) Capturer un nombre $M$ d'individus.
2) Les marquer, puis les relâcher.
3) Effectuer une nouvelle capture de $n$ individus, avec $m$ les individus déjà marqués.
4) On calcule l'abondance estimée avec la proportionnalité : $N = \frac{n}{m} \times M$

## Estimation avec intervalle de confiance à 95 %
Formule : $[f - \frac{1}{\sqrt{n}} ; f + \frac{1}{\sqrt{n}}]$  
Où :
- $f$ est la fréquence observée ($\frac{n}{m}$ de la méthode CMR).
- $n$ est la taille de l'échantillon ($m$ de la méthode CMR).

1) Calculer l'intervalle, nous appellerons $a$ la borne inférieure et $b$ la borne supérieure.
2) On peut donc dire que la proportion théorique doit se situer, avec un niveau de confiance de 95 % entre $a$ et $b$.
3) $a \leqslant \frac{M}{N} \leqslant b$
4) $\frac{1}{a} \geqslant \frac{N}{M} \geqslant \frac{1}{b}$
5) $\frac{1}{a} \times M \geqslant N \geqslant \frac{1}{b} \times M$

Appelons $c$ le résultat de $\frac{1}{a} \times M$, et $d$ le résultat de $\frac{1}{b} \times M$  
6) Le nombre d'individus total est donc estimé entre $c$ et $d$, avec un taux de confiance à 95 %.
(Ne pas oublier d'arrondir $c$ et $d$ si ce sont des individus).