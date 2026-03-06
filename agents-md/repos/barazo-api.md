# Barazo API -- AppView Backend

<!-- Auto-generated from barazo-workspace. To propose changes, edit the source:
     https://github.com/singi-labs/barazo-workspace/tree/main/agents-md -->

AGPL-3.0 | Part of [github.com/singi-labs](https://github.com/singi-labs)

The AppView backend for Barazo. Subscribes to AT Protocol firehose, indexes `forum.barazo.*` records in PostgreSQL, and exposes a REST API for all forum operations.

## Tech Stack

| Component | Technology |
|-----------|-----------|
| Runtime | Node.js 24 LTS / TypeScript (strict) |
| Framework | Fastify |
| Protocol | @atproto/api, @atproto/oauth-client-node, @atproto/tap |
| Database | PostgreSQL 16 (Drizzle ORM, Drizzle Kit push) |
| Cache | Valkey |
| Testing | Vitest + Supertest |
| Logging | Pino (structured) |
| Monitoring | GlitchTip (Sentry SDK-compatible) |
| Security | Helmet + Zod + DOMPurify + rate limiting |

## What This Repo Does

- Subscribes to the AT Protocol firehose via Tap, filtering for `forum.barazo.*` collections
- Indexes forum records (topics, replies, categories, reactions) in PostgreSQL
- Exposes REST API routes: `/api/forum/*`, `/api/admin/*`
- Runs in two modes: single-forum (one community) or global (all Barazo forums)
- Handles AT Protocol OAuth authentication
- Validates all firehose records before indexing (Zod)
- Validates all API input (Zod), sanitizes all output (DOMPurify)

## API-Specific Standards

- Every API endpoint validates input with a Zod schema
- Every firehose record validated before indexing
- DOMPurify sanitization on all user-generated content output
- Helmet + CSP + HSTS + rate limiting on all endpoints
- GlitchTip error monitoring from first deployment
- No raw SQL -- Drizzle ORM with parameterized queries only
- Accessible error responses -- include human-readable messages and structured error codes to support accessible frontend rendering
