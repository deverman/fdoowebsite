# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Swift static site generator project using [Saga](https://github.com/loopwerk/Saga) to produce an app landing page. It outputs to the `deploy/` directory.

## Commands

```bash
# Install the Saga CLI (one-time)
brew install loopwerk/tap/saga

# Start dev server with live reload at http://localhost:3000
saga dev

# Production build (outputs to deploy/)
saga build

# Clean Swift build artifacts
swift package clean
```

## Architecture

**Two source files drive everything:**

- `Sources/saga-app-template/main.swift` — Saga pipeline config. Registers two content pipelines:
  1. `content/articles/` → rendered with `ArticleMetadata` (tags, summary); produces per-article pages, a listing page, and tag pages
  2. `content/*.md` (root pages like `index.md`) → rendered with `EmptyMetadata`; produces standalone pages

- `Sources/saga-app-template/templates.swift` — All HTML templates using the [Swim](https://github.com/loopwerk/Swim) DSL (Swift HTML builder). `baseHtml()` is the shared layout; `renderArticle`, `renderArticles`, `renderTag`, and `renderPage` are the page-level renderers.

**Content:**
- `content/index.md` — home page
- `content/articles/*.md` — articles (support frontmatter: `tags`, `summary`, `date`)
- `content/static/style.css` — the sole stylesheet; referenced via `Saga.hashed()` for cache busting

**Site-wide constants** (`SiteMetadata` in `main.swift`): update `url`, `name`, and `author` when customizing for a new app.

## Key dependencies

| Package | Role |
|---|---|
| Saga | Core pipeline (read → process → write) |
| SagaParsleyMarkdownReader | Parses Markdown with Parsley/cmark |
| SagaSwimRenderer | Bridges Swim HTML nodes to Saga writers |
| Swim (via SagaSwimRenderer) | Swift HTML DSL used in templates |
| Bonsai | Utility helpers |
| SwiftTailwind | CSS/Tailwind integration |
