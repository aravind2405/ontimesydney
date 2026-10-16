# OnTimeSydney

Sydney buses report themselves on time more often than they are, and the data to check it disappears unless you capture it continuously.

> Status: v0.1 Foundation, in progress. No data collected yet.

## 1. Why this exists
_TODO (v1.0)_

## 2. Key findings
_None yet. Every figure here will be generated from the pipeline, never typed by hand._

## 3. Architecture
Collector → raw Parquet → PostgreSQL → dbt (staging → intermediate → marts) → report.
See `docs/decisions/` for the reasoning behind each choice.

## 4. Repo layout
| Path | Purpose |
|---|---|
| `src/ontimesydney/` | Python package: `common`, `collector`, `loaders` |
| `dbt/` | dbt project: models, snapshots, data tests |
| `tests/` | pytest: `unit`, `integration`, `fixtures` |
| `docs/` | `definitions.md` and ADRs in `decisions/` |
| `scripts/` | Repo checks and generators |

## 5. Quickstart
```bash
python3 -m venv .venv && source .venv/bin/activate
make install
make check
```

## 6. Data source and licence
Transport for NSW Open Data, licensed CC BY 4.0. Code: MIT.

## 7. Known limitations
_To be documented as they are found._

## 8. Roadmap
v0.1 Foundation → v0.2 Collector → v0.3 Load → v0.4 Model → v1.0 Metrics → v1.1 Orchestration → v2.0 Serving
