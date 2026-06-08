# Prompt 02: Build The Saga Site

Use this after you have a site brief and your assets are in `content/static/assets/`.

```text
If required details are missing or ambiguous, ask me concise questions before making changes.

I want you to build an app landing page in this Swift Saga static site template.

Before editing:
1. Inspect `README.md`, `Package.swift`, `Sources/`, `content/`, and `content/static/`.
2. Confirm where the homepage content, Swift templates, CSS, and static assets live.
3. If my app brief, asset paths, CTA URL, or privacy/support/contact information are missing, ask me questions before making changes.

Use this site brief:

[PASTE THE SITE BRIEF FROM PROMPT 01 HERE]

Implementation requirements:
- Build a polished single-page app website.
- Keep editable marketing copy in Markdown where practical.
- Use Swift templates only for structure, reusable layout, metadata, and components that are awkward in Markdown.
- Use assets from `content/static/assets/`.
- Reference assets with public paths like `/static/assets/screenshot-home.png`.
- Include these sections when enough information is available:
  - Hero with app name, headline, subheadline, primary CTA, and app visual.
  - Benefits or features.
  - Screenshots or product preview.
  - App Store or TestFlight CTA.
  - FAQ.
  - Privacy/support/contact links.
- Include SEO title, meta description, and social sharing metadata if the template supports it. If it does not support these yet, ask before adding that capability.
- Make the page responsive for mobile and desktop.
- Avoid placeholder text unless you clearly mark it as TODO.
- Do not edit generated files in `deploy/` directly.

Style requirements:
- Use a visual direction that fits the app and audience.
- Avoid generic AI-looking purple gradient landing pages unless my brief explicitly asks for that.
- Keep text readable and buttons easy to tap on mobile.
- Do not use assets outside the repository unless I approve them.

After editing:
- Tell me which files changed.
- Tell me what command to run to preview the site.
- Tell me what to check in the browser.
```
