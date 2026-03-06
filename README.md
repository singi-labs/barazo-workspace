<div align="center">

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/singi-labs/.github/main/assets/logo-dark.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/singi-labs/.github/main/assets/logo-light.svg">
  <img alt="Barazo Logo" src="https://raw.githubusercontent.com/singi-labs/.github/main/assets/logo-dark.svg" width="120">
</picture>

# Barazo Workspace

**pnpm workspace root for Barazo forum development -- shared configuration, tooling, and cross-package dependency management.**

[![Status: Alpha](https://img.shields.io/badge/status-alpha-orange)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-24%20LTS-brightgreen)](https://nodejs.org/)
[![TypeScript](https://img.shields.io/badge/typescript-5.x-blue)](https://www.typescriptlang.org/)

</div>

---

## Overview

This repository contains the shared workspace configuration for the Barazo forum platform. It provides pnpm workspace linking, shared dependency versions via pnpm catalogs, base TypeScript and ESLint configs, and development tooling (commitlint, husky, vitest base config). Each Barazo package lives in its own repository and is cloned into this workspace root as a subdirectory.

---

## Workspace Structure

| Directory | Repository | Description |
|-----------|-----------|-------------|
| `barazo-api/` | [barazo-api](https://github.com/singi-labs/barazo-api) | AppView backend (Fastify, AT Protocol) |
| `barazo-web/` | [barazo-web](https://github.com/singi-labs/barazo-web) | Forum frontend (Next.js, React) |
| `barazo-lexicons/` | [barazo-lexicons](https://github.com/singi-labs/barazo-lexicons) | AT Protocol lexicon schemas + generated types |
| `barazo-deploy/` | [barazo-deploy](https://github.com/singi-labs/barazo-deploy) | Docker Compose templates for self-hosting |
| `barazo-website/` | [barazo-website](https://github.com/singi-labs/barazo-website) | Marketing + docs site (barazo.forum) |

## Shared Configuration

| File | Purpose |
|------|---------|
| `pnpm-workspace.yaml` | Workspace package list + dependency catalog |
| `package.json` | Shared devDependencies + workspace scripts |
| `tsconfig.base.json` | Base TypeScript config extended by all packages |
| `eslint.config.base.js` | Base ESLint config extended by all packages |
| `vitest.config.base.ts` | Base Vitest config with coverage thresholds |
| `commitlint.config.js` | Conventional commit enforcement |
| `.npmrc` | GitHub Packages registry + workspace linking |

---

## Quick Start

Requires Node.js 24 LTS and pnpm 10.x.

```bash
# Clone the workspace root
git clone https://github.com/singi-labs/barazo-workspace.git singi-labs
cd singi-labs

# Clone each sub-project
git clone https://github.com/singi-labs/barazo-api.git
git clone https://github.com/singi-labs/barazo-web.git
git clone https://github.com/singi-labs/barazo-lexicons.git
git clone https://github.com/singi-labs/barazo-deploy.git
git clone https://github.com/singi-labs/barazo-website.git

# Install all dependencies (workspace-wide)
pnpm install

# Start development infrastructure (PostgreSQL, Valkey)
pnpm dev:infra

# Start API and web in separate terminals
pnpm dev:api
pnpm dev:web
```

---

## Development

```bash
pnpm test        # Run tests across all packages
pnpm lint        # Lint all packages
pnpm typecheck   # Type-check all packages
pnpm build       # Build all packages
```

Key standards:

- Conventional commits enforced via commitlint + husky
- Strict TypeScript (`strict: true`, no `any`)
- All changes via Pull Requests (never commit directly to `main`)
- See [CONTRIBUTING.md](https://github.com/singi-labs/.github/blob/main/CONTRIBUTING.md) for full guidelines

---

## Related Repositories

| Repository | Description | License |
|------------|-------------|---------|
| [barazo-api](https://github.com/singi-labs/barazo-api) | AppView backend -- Fastify, firehose, API | AGPL-3.0 |
| [barazo-web](https://github.com/singi-labs/barazo-web) | Forum frontend -- Next.js, Tailwind | MIT |
| [barazo-lexicons](https://github.com/singi-labs/barazo-lexicons) | Lexicon schemas + generated TypeScript types | MIT |
| [barazo-deploy](https://github.com/singi-labs/barazo-deploy) | Docker Compose templates for self-hosting | MIT |
| [barazo-website](https://github.com/singi-labs/barazo-website) | Marketing + docs site (barazo.forum) | MIT |
| [.github](https://github.com/singi-labs/.github) | Org-level community health files | MIT |

---

## Community

- **Website:** [barazo.forum](https://barazo.forum)
- **Discussions:** [GitHub Discussions](https://github.com/orgs/singi-labs/discussions)
- **Issues:** [Report bugs](https://github.com/singi-labs/barazo-workspace/issues)

---

## License

**MIT** -- Workspace configuration and shared tooling are permissively licensed to allow maximum reuse.

See [LICENSE](LICENSE) for full terms.

---

(c) 2026 Barazo
