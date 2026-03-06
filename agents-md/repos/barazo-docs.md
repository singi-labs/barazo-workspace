# Barazo Docs -- Documentation Site

<!-- Auto-generated from barazo-workspace. To propose changes, edit the source:
     https://github.com/singi-labs/barazo-workspace/tree/main/agents-md -->

MIT | Part of [github.com/singi-labs](https://github.com/singi-labs)

Documentation site for Barazo at docs.barazo.forum. Built with Fumadocs (Next.js).

## Tech Stack

| Component | Technology |
|-----------|-----------|
| Framework | Fumadocs (Next.js 16 / React 19 / TypeScript strict) |
| Styling | TailwindCSS |
| API docs | fumadocs-openapi (auto-generated from OpenAPI spec) |
| Type docs | fumadocs-typescript (auto-generated from source) |
| Search | Orama (self-hosted, audience-scoped) |
| Icons | Phosphor Icons |
| Typography | Source Sans 3 / Source Code Pro (self-hosted) |
| Output | Static export (zero server runtime) |

## What This Repo Does

- Developer documentation (API reference, plugin dev guide, lexicon reference, AT Protocol concepts, contributing guide)
- Admin documentation (self-hosting guide, admin guide, FAQ, migration guides)
- API reference auto-generated from OpenAPI spec via fumadocs-openapi
- TypeScript type documentation auto-generated from lexicon types via fumadocs-typescript
- Audience-scoped navigation (Developer / Admin sidebar tabs)
- Shared header/footer via @barazo/ui-shell (React build)
- LLM-friendly docs output (llms.txt)

## Docs-Specific Standards

- Strict TypeScript -- `strict: true`, no `any`, no `@ts-ignore`
- Accessibility -- WCAG 2.2 AA, semantic HTML
- Static export -- all pages pre-rendered at build time, zero client JS where possible
- Search -- Orama (self-hosted), no external SaaS dependencies
- Auto-generation -- API docs and type docs must rebuild when barazo-api or barazo-lexicons update
