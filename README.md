# configweave

`configweave` explores developer tools with a small Haskell codebase and local fixtures. The technical goal is to validate typed configuration overlays and provenance chains.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Configweave Review Notes

For a quick review, compare `safe rewrite` with `change width` before reading the middle cases.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for change width and diagnostic quality.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/configweave-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `safe rewrite` and `change width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `change width`, `diagnostic quality`, `review cost`, and `safe rewrite`.

The added Haskell path is deliberately direct, with fixtures doing most of the explaining.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 221, which lands in `ship`. The most cautious case is `stale` at 117, which lands in `watch`.

## Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
