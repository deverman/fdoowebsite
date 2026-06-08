# App Website Workshop Implementation Plan

## Summary

Prepare this Saga template so mixed-skill app developers can create and publish an app landing page in 2.5 hours using their own AI tool, Sketch exports, and screenshots. The default outcome is a published GitHub Pages site. The workshop should reduce open-ended design time by giving students structured prompts that gather missing information first, then guide the AI to build inside this Saga repo.

Default publishing path: students run `saga build` locally, commit the generated `deploy/` folder, and GitHub Actions publishes `deploy/` to Pages. This avoids making every student debug Swift/Saga inside GitHub Actions during the session.

## Repository Changes

- Expand `README.md` into a student-facing workshop guide.
- Add `Prompts/01-site-brief.md`, `Prompts/02-build-saga-site.md`, and `Prompts/03-polish-and-publish.md`.
- Add a GitHub Pages workflow that publishes the committed `deploy/` directory.
- Document `content/static/assets/` as the default folder for Sketch exports, screenshots, icons, and marketing images.
- Leave a `TODO` placeholder for copywriting skill install instructions.

## Prompt Requirements

Each student prompt must be usable by a lower-effort LLM and must not assume the student knows what information matters.

- Start with: "If required details are missing or ambiguous, ask me concise questions before making changes."
- Ask clarifying questions when app name, audience, primary CTA, asset folder, visual direction, privacy/support/contact links, or App Store/TestFlight links are missing.
- Distinguish required fields from optional fields.
- Tell AI to inspect the repo before editing.
- Keep editable marketing copy in Markdown where practical.
- Use Swift templates for structure and reusable layout.
- Use assets from `content/static/assets/`.
- Avoid broken links, missing image references, and placeholder copy unless explicitly marked.
- Preserve responsive mobile and desktop layouts.
- Include SEO title, meta description, and social sharing metadata when supported by the template.
- Run or ask the student to run `saga build` and inspect the local site before publishing.

## Workshop Flow

- 0-10 min: Explain the goal: each participant publishes a live app website from the template.
- 10-40 min: Setup checkpoint. Everyone should reach a working `saga dev`.
- 40-55 min: Explain `content/`, `Sources/`, `content/static/`, and `deploy/`.
- 55-65 min: Put Sketch exports/screenshots into `content/static/assets/`.
- 65-100 min: Students run `Prompts/01` and `Prompts/02` in their AI tool.
- 100-115 min: Students run `Prompts/03`, then `saga build`.
- 115-135 min: Commit, push, enable GitHub Pages from Actions, and verify the live URL.
- 135-150 min: Troubleshooting, sharing links, and next steps.

## Student Tripwires

- Homebrew install delays or missing Xcode Command Line Tools.
- Swiftly installed but `swift` not found because the shell PATH was not refreshed.
- Wrong Swift version or multiple Swift installs competing.
- First Swift build taking longer because dependencies download and compile.
- `saga` not found after install.
- Port 3000 already in use.
- Asset filenames with spaces, uppercase/lowercase mismatches, or images placed outside `content/static/assets/`.
- AI tools editing `deploy/` directly instead of changing `content/` or `Sources/`.
- Students not knowing Markdown syntax for headings, links, images, and lists.
- Tailwind confusion.
- Broken App Store/TestFlight/privacy/support URLs.
- GitHub Pages not enabled for Actions, or Actions permissions not set.
- Pages delay after deployment.
- Publishing private tokens, secrets, or screenshots that should not be public.

## Test Plan

- On a clean macOS 26 account, verify the README setup from zero to `saga dev`.
- Verify `saga build` creates a complete `deploy/` folder with `index.html`.
- Verify the Pages workflow publishes committed `deploy/` without requiring Swift in CI.
- Verify each prompt causes the AI to ask useful questions when key app details are missing.
- Verify the generated site includes hero, benefits/features, screenshots, CTA, FAQ, privacy/support/contact, responsive layout, and no broken local asset paths.
- Verify the instructions work with participant-chosen AI tools, with Codex plus the Saga/design skills as the best-supported path.

## Assumptions And References

- All participants will have Sketch exports or screenshots, so no fallback sample app/assets are required.
- Publishing is the primary outcome; design depth is reduced if time gets tight.
- The copywriting skill is intentionally left as a placeholder to fill in later.
- Setup references:
  - Homebrew installation: <https://docs.brew.sh/Installation.html>
  - Swiftly on macOS: <https://www.swift.org/install/macos/swiftly/>
  - GitHub Pages publishing source: <https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site>
