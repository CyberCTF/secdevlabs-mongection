# Upstream

| | |
| --- | --- |
| Project | secDevLabs (Globo.com) |
| Repository | https://github.com/globocom/secDevLabs |
| App | `owasp-top10-2021-apps/a3/mongection` |
| Version | master (secDevLabs has no releases) |
| Commit | 10be438496e928c66567749f0aaf0bb976052bc9 |
| Licence | BSD-3-Clause |

The app folder [`owasp-top10-2021-apps/a3/mongection`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a3/mongection) of that commit is vendored unchanged, without its Git history,
split so that each part sits in the build folder of the machine that uses it:

| Upstream path (in the app folder) | Here |
| --- | --- |
| `deployments/mongo-init.js, deployments/mongo.Dockerfile` | `build/mongo/app/deployments/` |
| `everything else` | `build/server/app/` |

Each `build/<machine>/Dockerfile` says in its header comment how it differs from upstream:

- `build/server/`: upstream's `deployments/mongection.Dockerfile` with the base image pinned to `node:22` (upstream takes the latest) and `DBUSER` / `DBPASS` from upstream's compose file baked in. Dependencies come from upstream's `package-lock.json`.
- `build/mongo/`: upstream's `deployments/mongo.Dockerfile` with `mongo-init.js`, pinned to `mongo:4.2` (upstream takes the latest, but the app's MongoDB driver 3.3.2 supports servers up to 4.2).

To update, replace the vendored folders with a newer secDevLabs commit, then change this file.
