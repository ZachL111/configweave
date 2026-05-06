# configweave

`configweave` packages a practical developer tools exercise in Haskell. The emphasis is on deterministic behavior, a small public API, and examples that explain the tradeoffs.

## How I Read Configweave

The useful thing to inspect here is how the same score rule is represented in code, metadata, and examples. If those three pieces disagree, the audit script should make the drift visible.

## Main Behaviors

- Includes extended examples for safe defaults, including `surge` and `degraded`.
- Documents repeatable output tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Problem Shape

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Repository Map

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Internal Model

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps code shape, diagnostics, and safe defaults in one explicit decision path. The threshold is 174, with risk penalty 5, latency penalty 2, and weight bonus 3. The Haskell code keeps the pure scoring function isolated so tests can check it without setup.

## How To Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Scenario Walkthrough

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## Validation

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Known Edges

The repository favors determinism over breadth. It does not pull live data, keep secrets, or depend on network access for verification.

## Follow-Up Work

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more developer tools fixture that focuses on a malformed or borderline input.

## Run It Locally

The only required setup is the local Haskell toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
