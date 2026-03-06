# Barazo Web -- Default Frontend

<!-- Auto-generated from barazo-workspace. To propose changes, edit the source:
     https://github.com/singi-labs/barazo-workspace/tree/main/agents-md -->

MIT | Part of [github.com/singi-labs](https://github.com/singi-labs)

The default frontend for Barazo forums. Communicates with the AppView backend exclusively via REST API. Forum admins can customize or replace entirely.

## Tech Stack

| Component | Technology |
|-----------|-----------|
| Framework | Next.js 16 / React 19 / TypeScript (strict) |
| Styling | TailwindCSS |
| Components | shadcn/ui (Radix primitives) for admin; custom forum components |
| Colors | Radix Colors (12-step system) + Flexoki accent hues |
| Icons | Phosphor Icons (6 weights) |
| Typography | Source Sans 3 / Source Code Pro (self-hosted, zero external DNS) |
| Syntax highlighting | Shiki + Flexoki theme (SSR, dual light/dark) |
| Testing | Vitest + vitest-axe + @axe-core/playwright |
| Accessibility | WCAG 2.2 AA from first commit |
| SEO | JSON-LD, OpenGraph, sitemaps, SSR |

## What This Repo Does

- Server-side rendered forum UI (topics, replies, categories, profiles, search)
- Admin dashboard (moderation, settings, branding) using shadcn/ui
- Communicates with barazo-api via REST API only (fully decoupled)
- Handles AT Protocol OAuth login flow (redirects to user's PDS)
- Markdown rendering for post content (sanitized)

## Frontend-Specific Standards

- WCAG 2.2 AA compliance from first commit -- eslint-plugin-jsx-a11y strict + vitest-axe + @axe-core/playwright in CI
- Semantic HTML -- correct elements (`<nav>`, `<main>`, `<article>`, `<aside>`), no div soup
- Keyboard navigation -- all interactive elements reachable and operable, visible focus indicators
- Radix primitives (via shadcn/ui) for complex interactive components -- no custom dropdowns, dialogs, etc.
- SEO -- JSON-LD structured data (DiscussionForumPosting, BreadcrumbList), OpenGraph + Twitter Cards, sitemaps, canonical URLs
- DOMPurify on all user-generated content rendering
