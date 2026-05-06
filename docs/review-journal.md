# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its developer tools focus without claiming live deployment or external usage.

## Cases

- `baseline`: `change width`, score 169, lane `ship`
- `stress`: `diagnostic quality`, score 120, lane `watch`
- `edge`: `review cost`, score 150, lane `ship`
- `recovery`: `safe rewrite`, score 221, lane `ship`
- `stale`: `change width`, score 117, lane `watch`

## Note

A future change should add new cases before it changes the scoring rule.
