# Arithmetic Chiral Homology and Deninger's Motivic Cohomology

Research preprint by Raeez Lorgat.

This repository isolates the arithmetic-chiral/Deninger paper from Volume IV
of the larger ordered-chiral program. It is under active independent audit.
The paper deliberately separates three levels of assertion:

- unconditional Tate--Mellin and finite Euler-factor identities;
- finite-stage constructions subject to their displayed equivariance
  hypotheses;
- conditional or conjectural Deninger, Hilbert--Pólya, quantum arithmetic
  Chern--Simons, and all-genus comparisons.

No claim that the manuscript proves the Riemann hypothesis is intended. The
spectral-flow operator, determinant-class realization, and comparison maps are
explicit outstanding hypotheses.

## Build

```sh
make
```

The build uses `pdflatex` with `-halt-on-error` and requires both passes to
exit successfully. The resulting PDF is written to `out/paper.pdf`.

## Provenance

`paper.tex` was extracted byte-for-byte from
`chiral-bar-cobar-vol4/standalone/arithmetic_chiral_homology_and_deninger.tex`
at commit `e595bbf1c2f3e9f51a1266e7025e8af98bd072ed`. The style file is vendored
from the author's `amstex-template` repository so a fresh clone can build
without a machine-local symlink.

