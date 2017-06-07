# Recursion[^4]

## Pizza cutting

### Problem definition

When you cut a pizza, you cut along a diameter of the pizza. Let `pizza(n)` be
the number of slices of pizza that exist after you have made `n` cuts, where
`n ≥ 1`. For example, `pizza(2) = 4` because there are four slices after two
diagonal cuts.

Write a recursive method `pizza(n)` to return the number of  slices and verify
the correctness of your method when the pizza is cut 4 times _(3 points)_.

### Implementation

\inputminted[firstline=6,lastline=9]{haskell}{code_samples/Pizza.hs}

## Parking

### Problem definition

A bunch of motorcycles and cars want to parallel park on a street. The street
can fit `n` motorcycles, but one car take up three motorcycle spaces. Let
`a(n)` be the number of arrangements of cars and motorcycles on a street that
fits n motorcycles _(7 points)_.

### Implementation

\inputminted[firstline=6,lastline=11]{haskell}{code_samples/Parking.hs}

### Possible Arrangements $n = 6$

MMMC, MMCM, MCMM, CMMM, MMMMMM, CC.

[^4]: Full code samples can be found on Appendix C
