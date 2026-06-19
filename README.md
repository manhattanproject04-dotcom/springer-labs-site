# Springer Labs — Portfolio Site

Official website for [Springer Labs](https://springer-labs.com), an AI strategy and consulting firm operating across clean energy, nonprofit, and media sectors.

## Stack

Plain HTML, CSS, and vanilla JS — no build step, no dependencies.

- **Fonts:** Bebas Neue (display) + Space Grotesk (body) via Google Fonts
- **Hosting:** Netlify
- **Domain:** springer-labs.com

## Structure

```
portfolio/
├── index.html          # Entire site — styles, markup, and scripts
└── Springer=Labs-Logo.png
```

## Workflow

All changes go through a PR before deploying.

**Make a change:**
```bash
./update.sh "describe what you changed"
```
This creates a branch, commits, pushes, and opens a PR automatically.

**After merging the PR, deploy:**
```bash
git checkout main && git pull && npx netlify-cli deploy --prod
```

## Sections

- Hero with animated cycling words
- Statement
- Services (AI Strategy, Clean Energy, Nonprofit)
- Sectors We Serve (Clean Energy & Climate · Nonprofit & Mission-Driven · Media Strategy)
- How We Work (capabilities strip)
- CTA

## Contact

info@springer-labs.com
