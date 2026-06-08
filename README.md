# Saga App Website Workshop Template

Use this template to create and publish a promotional website for your app with Swift, Saga, Markdown, CSS, and AI assistance.

By the end of the workshop, you should have:

- A working local Saga site.
- Your app screenshots or Sketch exports in the repository.
- A custom landing page generated with AI.
- A published GitHub Pages website.

## What You Need

- A Mac running macOS 26.
- A GitHub account.
- Access to an AI coding tool.
- Sketch exports or screenshots for your app.
- Terminal.

Optional but useful:

- App icon or logo.
- App Store or TestFlight link.
- Privacy policy, support, or contact link.
- Short FAQ or notes about your app's audience and benefits.

## Create Your Own Website Repository

Do not fork this repository. Create your own repository from the template so your app website is independent from the workshop starter.

1. Open the workshop template repository:

   ```text
   https://github.com/deverman/saga-app-template
   ```

2. Click **Use this template**.
3. Choose **Create a new repository**.
4. Name the repository after your app, for example:

   ```text
   my-app-website
   ```

5. Choose **Public** if you want to publish with GitHub Pages during the workshop.
6. Click **Create repository**.
7. Clone your new repository to your Mac:

   ```bash
   git clone https://github.com/YOUR-GITHUB-USERNAME/YOUR-REPO-NAME.git
   cd YOUR-REPO-NAME
   ```

From this point on, make changes in your own repository. Your commits and GitHub Pages site belong to your app, not the instructor's template repository.

## Install Required Tools

### 1. Install Homebrew

Open Terminal and check whether Homebrew is installed:

```bash
brew --version
```

If Terminal says `command not found`, install Homebrew from the official instructions:

<https://docs.brew.sh/Installation.html>

After installation, close and reopen Terminal, then run `brew --version` again.

### 2. Install Swift With Swiftly

Install Swiftly using the official macOS instructions:

<https://www.swift.org/install/macos/swiftly/>

Then check Swift:

```bash
swift --version
```

This template expects Swift 6.0 or newer.

### 3. Install Saga

Install the Saga static site generator CLI:

```bash
brew install loopwerk/tap/saga
```

Check that it installed:

```bash
saga --help
```

## Install AI Skills

Install the Saga site skill using the instructions your instructor provides.

TODO: Add the final Saga skill install command or URL.

Use a design skill if your AI tool supports skills. This helps the AI create a more polished landing page.

TODO: Add copywriting skill install instructions.

## Project Tour

- `content/`: Markdown source content for pages and articles.
- `content/static/style.css`: CSS for the site.
- `content/static/assets/`: app icons, screenshots, Sketch exports, and marketing images.
- `Sources/saga-app-template/main.swift`: Saga pipeline configuration.
- `Sources/saga-app-template/templates.swift`: Swift HTML templates.
- `deploy/`: generated website output from `saga build`.
- `Prompts/`: prompts to use with your AI tool during the workshop.

Do not edit files in `deploy/` by hand. Change `content/`, `Sources/`, or `content/static/`, then rebuild.

## Quick Concepts

### Markdown

Markdown is plain text that becomes HTML. Examples:

```markdown
# Page Title

## Section Title

- Bullet item
- Another item

[Link text](https://example.com)
![Image description](/static/assets/screenshot.png)
```

### Saga

Saga reads files from `content/`, runs a Swift pipeline, and writes static HTML files to `deploy/`.

### Tailwind And CSS

CSS controls layout, colors, spacing, and typography. Tailwind-style classes are short utility names that help describe visual styling. If you are new to CSS, ask your AI tool to make small focused changes and explain what changed.

## Add Your App Assets

Put your exported app assets here:

```text
content/static/assets/
```

Recommended filenames:

```text
app-icon.png
screenshot-home.png
screenshot-details.png
screenshot-settings.png
```

Avoid spaces in filenames. Use lowercase letters, numbers, and hyphens.

Reference assets from the site like this:

```text
/static/assets/screenshot-home.png
```

## Run The Site Locally

Start the development server:

```bash
saga dev
```

Open:

```text
http://localhost:3000
```

If port 3000 is already being used, run:

```bash
saga dev --port 8080
```

Open:

```text
http://localhost:8080
```

The first build can take a few minutes because Swift downloads and compiles dependencies.

## Use The Workshop Prompts

Run these prompts in order with your AI tool:

1. `Prompts/01-site-brief.md`
2. `Prompts/02-build-saga-site.md`
3. `Prompts/03-polish-and-publish.md`

If the AI asks follow-up questions, answer them before it edits the site. Clear answers produce a better landing page.

## Build For Publishing

Generate the static site:

```bash
saga build
```

The generated site is written to:

```text
deploy/
```

Before publishing, open the local site and check:

- App name and headline are correct.
- Screenshots load.
- App Store or TestFlight link works.
- Privacy, support, and contact links work.
- The page looks acceptable on mobile and desktop.

## Publish With GitHub Pages

1. Commit and push your repository, including the `deploy/` folder.
2. On GitHub, open your repository settings.
3. Go to **Pages**.
4. Set the build and deployment source to **GitHub Actions**.
5. Open the **Actions** tab and wait for the Pages workflow to finish.
6. Open the Pages URL shown by GitHub.

If the site does not appear immediately, wait a minute and refresh the Actions run or Pages URL.

## Troubleshooting

- `brew: command not found`: Homebrew is not installed or Terminal needs to be reopened.
- `swift: command not found`: Swiftly may not be installed, or your shell PATH needs to be refreshed.
- `saga: command not found`: run `brew install loopwerk/tap/saga`, then reopen Terminal.
- First build is slow: Swift is downloading and compiling dependencies.
- Browser does not open: manually visit `http://localhost:3000`.
- Port already in use: run `saga dev --port 8080`.
- Image does not show: confirm the file is inside `content/static/assets/` and the path starts with `/static/assets/`.
- GitHub Pages did not deploy: confirm Pages is set to GitHub Actions and the workflow finished successfully.
- AI edited `deploy/`: ask it to move the change into `content/`, `Sources/`, or `content/static/`, then run `saga build`.

Do not publish secrets, private tokens, or screenshots that should not be public.
