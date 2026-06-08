# Prompt 03: Polish And Publish

Use this after the first website draft exists.

```text
If required details are missing or ambiguous, ask me concise questions before making changes.

I have a draft Saga app website. Help me polish it and prepare it for GitHub Pages.

Before editing:
1. Inspect the current repo state.
2. Check the homepage, templates, CSS, static assets, and generated output policy.
3. Do not edit `deploy/` directly unless the task is only to rebuild generated output.

Polish checklist:
- Confirm the app name, headline, subheadline, and CTA are clear.
- Confirm every image path points to a file in `content/static/assets/`.
- Confirm App Store/TestFlight, privacy, support, and contact links are present or marked TODO.
- Confirm the page works on mobile and desktop.
- Confirm text does not overlap or overflow.
- Confirm the visual style feels appropriate for the app and audience.
- Confirm there are no obvious placeholder phrases like "Lorem ipsum" or "your app here".
- Confirm SEO/social metadata exists if the template supports it.

If something important is missing, ask me for it before inventing details.

Then:
- Make focused fixes.
- Ask me to run `saga build`.
- After the build succeeds, tell me to commit and push the repository, including `deploy/`.
- Tell me to enable GitHub Pages with GitHub Actions in repository settings.
- Tell me to open the Actions tab and wait for the Pages workflow to finish.

Final response should include:
- Files changed.
- Commands I ran or should run.
- What to verify on the live GitHub Pages URL.
```
