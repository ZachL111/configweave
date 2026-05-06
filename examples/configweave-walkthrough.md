# Configweave Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | change width | 169 | ship |
| stress | diagnostic quality | 120 | watch |
| edge | review cost | 150 | ship |
| recovery | safe rewrite | 221 | ship |
| stale | change width | 117 | watch |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
