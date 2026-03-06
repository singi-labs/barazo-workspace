# Barazo Lexicons -- Schema Definitions

<!-- Auto-generated from barazo-workspace. To propose changes, edit the source:
     https://github.com/singi-labs/barazo-workspace/tree/main/agents-md -->

MIT | Part of [github.com/singi-labs](https://github.com/singi-labs)

Lexicon schemas for the Barazo forum platform. Defines all `forum.barazo.*` record types and generates TypeScript types consumed by barazo-api and barazo-web.

## Namespace

`forum.barazo.*`

## What This Repo Does

- Defines AT Protocol lexicon schemas (JSON files) for all forum record types
- Generates TypeScript types from lexicon schemas
- Published as an npm package consumed by barazo-api and barazo-web
- Schemas are the contract between users' PDSs, the AppView, and any frontend

## Core Record Types (MVP)

- `forum.barazo.topic.post` -- main thread posts
- `forum.barazo.topic.reply` -- replies to threads
- `forum.barazo.interaction.reaction` -- reactions (configurable per forum)

Categories are AppView-only (admin-managed, stored in PostgreSQL), not PDS records.

## Lexicon-Specific Standards

- Schema-first -- lexicon JSON files are the source of truth; TypeScript types are generated, never hand-written
- Backwards compatibility -- once published, fields can be added but never removed or changed
- Follow AT Protocol lexicon conventions (see [AT Protocol Lexicon spec](https://atproto.com/specs/lexicon))
- Strict TypeScript -- `strict: true`, no `any`, no `@ts-ignore`
