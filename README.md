# Claude Skills Web Definitiva

Paquete de 71 skills para Claude Code: diseño web, UI/UX, animación, front-end y mejoras de Claude (ponytail, caveman, grill-me, playwright, ui-ux-pro-max, impeccable, taste, etc.).

## Instalación (dile esto a tu Claude)

> Instala las skills de https://github.com/yokyznt/claude-skills-web-definitiva en mi ~/.claude/skills

O a mano:

```bash
git clone https://github.com/yokyznt/claude-skills-web-definitiva
cd claude-skills-web-definitiva
./install.sh            # macOS / Linux / Git Bash
```

```powershell
powershell -ExecutionPolicy Bypass -File install.ps1   # Windows
```

Copia cada carpeta de `skills/` a `~/.claude/skills/` (no borra las que ya tengas; sobrescribe las del mismo nombre). Reinicia Claude Code.

## Mejoras de Claude

| Skill | Qué hace |
|---|---|
| `ponytail-ponytail` | Lazy senior dev mode for any coding task (write, refactor, fix, review): YAGNI, stdlib first, no unrequested a… |
| `ponytail-review` | Review a diff for over-engineering. Finds what to delete: reinvented stdlib, needless deps, speculative abstra… |
| `ponytail-audit` | Audit the whole repo for over-engineering. A ranked list of what to delete, simplify, or replace with stdlib o… |
| `caveman-caveman` |  |
| `caveman` |  |
| `caveman-review` |  |
| `caveman-commit` |  |
| `caveman-help` |  |
| `grill-me` | A relentless interview to sharpen a plan or design. |
| `grilling` | Grill the user relentlessly about a plan, decision, or idea. Use when the user wants to stress-test their thin… |
| `grill-with-docs` | A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go. |
| `brainstorming` | You MUST use this before any creative work - creating features, building components, adding functionality, mod… |
| `writing-plans` | Use when you have a spec or requirements for a multi-step task, before touching code |
| `systematic-debugging` | Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes |
| `verification-before-completion` | Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires runn… |
| `unlazy` | Enforces completion discipline for substantial autonomous work by writing acceptance gates before execution, d… |
| `full-output-enforcement` | Overrides default LLM truncation behavior. Enforces complete code generation, bans placeholder patterns, and h… |
| `stop-slop` | Remove AI writing patterns from prose. Use when drafting, editing, or reviewing text to eliminate predictable … |
| `antislop` | Anti Slop: Rules for AI Coding Agents. The core filter. Load always to stop generic AI slop. |

## Pruebas en navegador

| Skill | Qué hace |
|---|---|
| `playwright-cli` | Automate browser interactions, test web pages and work with Playwright tests. |

## Desarrollo web

| Skill | Qué hace |
|---|---|
| `next-best-practices` | Next.js best practices - file conventions, RSC boundaries, data patterns, async APIs, metadata, error handling… |
| `react-best-practices` | React best-practices reviewer for TSX files. Triggers after editing multiple TSX components to run a condensed… |
| `vercel-react-best-practices` | React and Next.js performance optimization guidelines from Vercel Engineering. This skill should be used when … |
| `tailwindcss` | Use when designing/implementing UI with Tailwind CSS (layout, typography, responsive, theming, component patte… |
| `shadcn` | shadcn/ui expert guidance — CLI, component installation, composition patterns, custom registries, theming, Tai… |
| `modern-css-html` | Choose native CSS and HTML features, assess browser support, or replace legacy workarounds with progressive en… |
| `oklch-skill` | OKLCH color space for web projects. Convert hex/rgb/hsl to oklch, generate palettes, check contrast, handle ga… |
| `core-web-vitals` | Optimize Core Web Vitals (LCP, INP, CLS) for better page experience using field and lab evidence. Use when ask… |
| `seo` | テクニカル SEO、オンページ最適化、構造化データ、Core Web Vitals、およびコンテンツ戦略にわたる SEO 改善の監査、計画、実施。ユーザーが検索可視性の向上、SEO 修正、スキーママークアップ、サイトマッ… |
| `fixing-accessibility` | Audit and fix HTML accessibility issues including ARIA labels, keyboard navigation, focus management, color co… |
| `image-to-code` | Elite website image-to-code skill for Codex. For visually important web tasks, it must first generate the desi… |
| `web-clone` |  |

## Animación y 3D

| Skill | Qué hace |
|---|---|
| `gsap` | Use when you need to add or debug professional web animations with GSAP (timelines, ScrollTrigger, stagger, tr… |
| `60fps-animation` | This skill should be used when the user asks to "fix janky CSS animation", "make animation 60fps", "stop layou… |
| `interaction-design` | Design and implement microinteractions, motion design, transitions, and user feedback patterns. Use when addin… |
| `animate-ui` |  |
| `review-animations` | Reviews animation and motion code against a high craft bar derived from Emil Kowalski's design engineering phi… |
| `threejs` | Use when building or debugging interactive 3D scenes on the web with Three.js (scene/camera/renderer, lights/m… |
| `webgl-landing-steering` | Use when creating or refining WebGL-heavy landing pages and you need to steer toward a specific visual outcome… |

## Diseño UI/UX

| Skill | Qué hace |
|---|---|
| `ui-ux-pro-max` | UI/UX design intelligence for web, mobile, and desktop. This skill should be used when designing, building, re… |
| `impeccable` | Use when the user wants to design, redesign, shape, critique, audit, polish, clarify, distill, harden, optimiz… |
| `taste-skill` | - |
| `design-taste-frontend` | Anti-slop frontend skill for landing pages, portfolios, and redesigns. The agent reads the brief, infers the r… |
| `frontend-design` | Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one. Helps w… |
| `emil-design-eng` | This skill encodes Emil Kowalski's philosophy on UI polish, component design, animation decisions, and the inv… |
| `web-design-guidelines` | Review UI code for Web Interface Guidelines compliance. Use when asked to "review my UI", "check accessibility… |
| `baseline-ui` | Quickly deslop UI code by fixing spacing, hierarchy, typography, and small layout issues. Use when the interfa… |
| `better-interface` | Reviews a screen, flow or whole interface across accessibility, layout, writing, typography, color and UI poli… |
| `better-ui` | Polishes surfaces, icons and motion with exact values for border radius, optical alignment, shadows, icon stat… |
| `better-typography` | Sets and reviews how text renders, from the type scale and spacing to font features, wrapping, truncation and … |
| `better-colors` | Builds and checks color systems by generating palettes, naming semantic tokens, converting between formats and… |
| `better-layout` | Sets grouping, alignment, reading order, responsive structure and room for translated text, so a layout holds … |
| `better-accessibility` | Reviews and fixes keyboard and focus behavior, ARIA, accessible names, forms, screen-reader announcements, mot… |
| `better-writing` | Writes and reviews interface copy, from labels and errors to empty states and confirmations, so it matches the… |
| `refactoring-ui` | Design and improve user interfaces using the concrete rules from Refactoring UI (Wathan & Schoger) — constrain… |
| `design-review` | Run a sharp, prioritized design critique of a UI — a URL, a screenshot/image, or a component file — covering v… |
| `high-end-visual-design` | Teaches the AI to design like a high-end agency. Defines the exact fonts, spacing, shadows, card structures, a… |
| `redesign-existing-projects` | Upgrades existing websites and apps to premium quality. Audits current design, identifies generic AI patterns,… |
| `landing-page` | Use when designing or rewriting a high-converting landing page (single-offer page) for SaaS/apps/services. Cov… |
| `landing-page-design` | Complete system for building high converting landing pages: intake questions, page structure, layout selection… |
| `antislop-ui` | UI and visual skill for antislop. Use when building or editing any interface: color, layout, components, motio… |
| `minimalist-ui` | Clean editorial-style interfaces. Warm monochrome palette, typographic contrast, flat bento grids, muted paste… |
| `popular-web-designs` | 54 real design systems (Stripe, Linear, Vercel) as HTML/CSS. |
| `make-interfaces-feel-better` | 日本語翻訳：このファイルは make-interfaces-feel-better 用の日本語翻訳が必要です |
| `polish` |  |
| `critique` |  |
| `audit` |  |
| `typeset` |  |
| `layout` |  |
| `colorize` |  |
| `improve-ui` | Audit an existing product surface against its own design evidence, identify verified UI problems, and write se… |

## Créditos

Recopilación de skills de sus autores originales (Anthropic, obra/superpowers, Vercel, impeccable, ui-ux-pro-max, mattpocock, emilkowalski, ponytail, caveman y otros). Cada skill conserva su licencia original; este repo solo las agrupa.
