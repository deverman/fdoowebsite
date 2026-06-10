# Fdoo — Website Brief
_Last updated: 2026-06-10_

---

## App Positioning

> Fdoo turns a photo of any menu into your personal food guide — translating dishes, flagging dietary matches, and giving you the cultural context to order like a local.

---

## Target Audience

Food-curious travelers eating out in countries where they don't speak the language. They want to make confident, personalized choices — not guess, not point randomly, not accidentally order something they can't eat.

---

## Hero Copy

**Headline (recommended):**
> The menu's in another language. Dinner isn't a mystery anymore.

**Headline alternatives:**
- B: `Point. Scan. Know exactly what you're ordering.` — punchier, good for simpler layouts
- C: `Every dish, decoded.` — works as a tagline or secondary headline

**Subheadline:**
> Fdoo reads menus in any language, checks every dish against your dietary needs, and tells you how to eat it before you order.

**Hero body (optional):**
> No guessing. No awkward pointing. No accidentally ordering something you can't eat.

**Primary CTA:**
> Try Fdoo on TestFlight → `https://testflight.apple.com/join/gcuFDKeB`

_Note: "Try Fdoo on TestFlight" outperforms "Sign Up" — it names what the visitor gets._

---

## Page Sections

### 1. Hero
- App icon: `fdooicon.svg`
- Wordmark: `fdoo` in Borel-Regular
- Hero screenshot: `main_screen.png`
- Headline + subheadline + optional body + CTA button

### 2. How It Works
**Section headline:** `Three seconds from confused to confident`

| Step | Headline | Body |
|---|---|---|
| 1 | Scan the menu | Point your camera at any menu — printed, handwritten, in any script. |
| 2 | Fdoo reads it | Every dish gets translated, analyzed for ingredients, and matched against your dietary preferences — instantly. |
| 3 | Tap to go deeper | Pronunciation, cultural background, how it's eaten. Everything you need to order with confidence. |

Supporting visuals: `onboarding_screen.png`, `translation_screen.png`

### 3. The Color System
**Section headline:** `You'll know at a glance`

**Body:** Fdoo flags every dish with a color so you can scan a menu the way you'd scan a traffic light.

| Badge | Label | Description |
|---|---|---|
| 🔵 Blue `#0387FF` | Recommended | Matches your taste preferences |
| 🟢 Green `#31C356` | Meets your diet | Safe for your dietary requirements |
| 🟡 Yellow `#FE8D29` | Proceed with caution | We're not certain — check before you order |
| 🔴 Red `#FE393C` | Skip this one | Contains something you avoid |

**Disclaimer:** _AI can make mistakes. Use your judgment, especially for serious dietary needs._

### 4. Features
**Section headline:** `What Fdoo does while you study the menu`

| Feature | Headline | Body |
|---|---|---|
| Translation | Any script. Any language. | Japanese, Arabic, Thai, Cyrillic — if it's on the menu, Fdoo reads it. |
| Dietary matching | Your rules, applied automatically. | Set your dietary preferences once. Fdoo checks every dish against them without you asking. |
| Cultural context | More than a translation. | Pronunciation, description, how it's traditionally eaten, and similar dishes — so you know what you're getting into. |

### 5. Built By
**Section headline:** `Built by people who've been that person staring at a menu`

| Name | LinkedIn |
|---|---|
| Brent Deverman | https://www.linkedin.com/in/deverman/ |
| Luisa Haning Tyas | https://www.linkedin.com/in/luisa-haning-tyas/ |
| Teresa Kaena | https://www.linkedin.com/in/teresakae/ |
| William Gozali | https://www.linkedin.com/in/willliamgozali8/ |
| Ketut Agus Cahyadi Nanda | https://www.linkedin.com/in/ketutaguscahyadinanda/ |

### 6. Footer CTA
**Headline:** `Still reading the menu upside down?`

**CTA:** Try Fdoo on TestFlight → `https://testflight.apple.com/join/gcuFDKeB`

### 7. Footer
- Privacy Policy → `/privacy-policy/`
- Support → `brent@projops.io`
- Copyright

---

## Color Palette

Sourced from `/Fdoo/Assets.xcassets/` and `content/static/assets/appcolors.svg`.

| Token | Light | Dark | Usage on site |
|---|---|---|---|
| fdooPrimary | `#AEC811` | `#C3DF13` | CTA buttons, highlights |
| fdooSecondary | `#1C2900` | `#F7FFE5` | Headlines, nav text |
| fdooTertiary | `#FFFFFF` | `#252F09` | Card surfaces |
| fdooQuartenary | `#EEF6C1` | `#2B301D` | Tag chips, subtle backgrounds |
| accentColor | `#78861E` | `#C0D440` | Borders, secondary actions |
| fdooBG | `#F7FFE5` | `#111111` | Page background |

**Brand font:** Borel-Regular for the `fdoo` wordmark. System sans-serif for all body copy.

---

## Asset List

| File | Path | Used In |
|---|---|---|
| `fdooicon.svg` | `content/static/assets/` | Hero, favicon, nav |
| `fdoologo.svg` | `content/static/assets/` | Footer / nav alternate |
| `main_screen.png` | `content/static/assets/` | Hero screenshot |
| `onboarding_screen.png` | `content/static/assets/` | How It Works — step 1 |
| `translation_screen.png` | `content/static/assets/` | How It Works — steps 2–3 |
| `fdoostickercircle.svg` | `content/static/assets/` | Decorative accent |
| `Borel-Regular.ttf` | Xcode project fonts | Wordmark on web |

---

## SEO Meta

**Page title:** `Fdoo — Scan Any Menu, Order With Confidence`

**Meta description:** `Fdoo translates restaurant menus in any language, flags dishes that match your diet, and gives you the cultural context to order like you know what you're doing.`

---

## Copy Guidelines

- **Do:** short declarative sentences, concrete verbs — scan, translate, flag, order
- **Avoid:** "eat like a local," "foodie paradise," "your passport to flavor," "bridge cultures," "game-changer," "seamless"
- **Tone:** confident, specific, playful — the lime-green + Borel energy without being precious about it
- **No exclamation points**

---

## Implementation Notes for Saga Templates

- The `fdoo` wordmark requires the Borel-Regular font — copy `Borel-Regular.ttf` from the Xcode project into `content/static/assets/` or reference via `@font-face`
- Color system pill badges should visually match in-app `FoodFlagView` style: colored background at 20% opacity, colored border and text
- Each pill badge section needs the AI disclaimer directly beneath it
- CTA button: `fdooPrimary` background (`#AEC811`), `fdooSecondary` text (`#1C2900`)
- Hero layout: icon left/center + screenshot right on desktop, stacked on mobile
