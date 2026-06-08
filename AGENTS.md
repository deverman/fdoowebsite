# Repository Guidelines

## Project Structure & Module Organization

This is a Swift Package that builds a Saga static site.

- `Package.swift` defines the executable target `saga-app-template` and Saga-related dependencies.
- `Sources/saga-app-template/main.swift` configures the Saga pipeline from `content/` to `deploy/`.
- `Sources/saga-app-template/templates.swift` contains all HTML renderers using the Swim DSL.
- `content/index.md` and `content/articles/*.md` are source content files.
- `content/static/style.css` is the source stylesheet.
- `deploy/` is generated production output from Saga. Regenerate it with `saga build` after source or content changes.

## Build, Test, and Development Commands

- `brew install loopwerk/tap/saga`: installs the Saga CLI if it is missing.
- `saga dev`: starts the local development server at `http://localhost:3000` with rebuilds for content and source changes.
- `saga dev --port 8080`: starts the same watcher on a different port.
- `saga build`: builds the static site into `deploy/`.
- `swift build`: compiles the Swift package and catches type or dependency errors.
- `swift package clean`: removes SwiftPM build artifacts when builds behave unexpectedly.

## Coding Style & Naming Conventions

Use Swift 6 conventions and match the existing style: two-space indentation, `PascalCase` for types, `camelCase` for functions and variables, and small rendering functions with descriptive names such as `renderArticle` or `baseHtml`. Keep site constants in `SiteMetadata`. Prefer Swim node builders for markup rather than assembling raw HTML strings, except when intentionally injecting parsed Markdown with `Node.raw`.

Markdown articles in `content/articles/` should include front matter with `tags`, `summary`, and `date`. Use kebab-case filenames, for example `privacy-policy.md`.

## Testing Guidelines

There is no test target in the package yet. For now, verify changes by running `swift build` and `saga build`; use `saga dev` for browser checks. If tests are added, place them under `Tests/`, name files after the feature under test, and run them with `swift test`.

## Commit & Pull Request Guidelines

Recent commits use short, sentence-style messages such as `Adjust needed packages, and build out home page and privacy page.` Keep commits focused and mention the user-visible area changed.

Pull requests should include a concise summary, verification commands run, and screenshots for visual changes to generated pages. Link related issues when available. Note whether `deploy/` was regenerated.

## Agent-Specific Notes

Do not overwrite unrelated local changes. Avoid editing `deploy/` by hand; change `Sources/` or `content/`, then rebuild. Keep `.DS_Store`, `.build/`, and other local artifacts out of commits.
