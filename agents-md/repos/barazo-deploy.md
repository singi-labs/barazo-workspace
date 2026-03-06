# Barazo Deploy -- Self-Hosting Templates

<!-- Auto-generated from barazo-workspace. To propose changes, edit the source:
     https://github.com/singi-labs/barazo-workspace/tree/main/agents-md -->

MIT | Part of [github.com/singi-labs](https://github.com/singi-labs)

Docker Compose templates and documentation for self-hosting a Barazo forum instance.

## What This Repo Does

- Docker Compose files for deploying the full Barazo stack (AppView + frontend + PostgreSQL + Valkey)
- Environment variable templates and configuration examples
- Installation and admin documentation
- Upgrade guides

## Stack (Deployed)

| Service | Image |
|---------|-------|
| AppView | barazo-api |
| Frontend | barazo-web |
| Database | PostgreSQL 16 |
| Cache | Valkey |
| Reverse proxy | Caddy (automatic SSL) |

## Deploy-Specific Standards

- Documentation-first -- every configuration option documented with defaults and examples
- Secure defaults -- no open ports beyond 80/443, secrets via env vars (never in compose files), non-root containers
- Minimal requirements -- target a single VPS (2 vCPU, 4GB RAM) as minimum spec
- One command deploy -- `docker compose up` must work for a basic setup
