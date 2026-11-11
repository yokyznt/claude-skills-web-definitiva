---
name: grilling
description: Grill the user relentlessly about a plan, decision, or idea. Use when the user wants to stress-test their thinking, or uses any 'grill' trigger phrases.
---

Interview the user relentlessly until you reach a shared understanding. Map this as a **design tree**: every decision branches into the decisions that hang off it.

Work the tree in **rounds**. The **frontier** is every decision whose prerequisites are already settled: the questions you can ask _now_ without guessing at answers you haven't heard yet. Ask the whole frontier in one round: number each question and give your recommended answer. Then wait for the user's answers before the next round.

Format a round like so:

```
❓ **Q1** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>

➡️ <your recommended answer>

---

❓ **Q2** - **<question title>**: <question body, might be multiple paragraphs, including multiple choices>

➡️ <your recommended answer>
```

Word each question so "yes" accepts your recommended answer.

When the user asks for a questionnaire/form ("cuestionario") or a `clarify` tool is available and the user prefers clicking, deliver each round through `clarify` instead of prose: one call per round, max 5 questions, max 4 choices each, recommended choice FIRST, options only in `choices`. Fold low-stakes confirmations into one multi-select question ("¿Qué más confirmas?") so a whole round fits in 5. Questions the user leaves unanswered (prose round, or a `clarify` round that times out): take your recommended choices, write them to the decisions record marked as assumed, list them in the closing plan message so the user can overturn them, and move on rather than re-asking.

Before asking about anything that depends on an external service or platform API (e.g. reading WhatsApp/Gmail/browser sessions), look up the real constraints first (official API exists? auth model, token expiry, ToS/ban risk) and present them inside the choices — the user decides between feasible options, not impossible ones.

Put the **problem question** in round 1: why does the user want this, what fails today? The underlying pain can invalidate the obvious design. For example, "the apps don't send push notifications" kills a notification-reader as the primary data source. Ask it before you branch on mechanisms.

When the plan watches a data source (notifications, emails, an app's screens), ask whether items that **already exist** must show up on the first launch, or only new ones. Backfill often needs a totally different mechanism (reading the other app's screens, an official API, an import) than listening for new events, and finding out late forces a redesign.

When answers across rounds contradict each other (they pick option A, then "none", then something that requires A), quote the conflicting answers back and spell out what each one implies. Do this in the next round as one dedicated question, and don't silently pick one.

When the user sets a global constraint ("todo gratis", "public app", "Play Store"), re-verify every earlier decision against it and surface the hidden costs as choices. Examples: one-time fees, free tiers that are one-time instead of monthly, platform audits for restricted scopes, cron limits on free hosting. If the user answers "tú decide", decide by that constraint and state the decision in the next round.

Each round the user answers reshapes the tree: settled decisions push the frontier outward and unblock questions that depended on them. Recompute the frontier and ask the next round. A question whose answer depends on another question still open in this round belongs to a _later_ round, not this one.

For a big multi-domain plan (app + AI + platform integrations), fan out one research sub-agent per branch BEFORE round 2 (each writes `research/NN-<branch>.md` with cited primary sources and a 5-line recommendation), and run round 1 (problem, priorities, order, style) while they read. Check the user's hardware yourself (GPU/VRAM/RAM) instead of asking. Append every round's settled answers to a `DECISIONES.md` in the project folder as you go, so a late constraint change or a timeout can be re-verified against a written record. Close with a short `PLAN.md` (architecture, phases, what the user must do) and wait for confirmation.

When the user unticks a recommended safety option in a multi-select (confirmations, kill switch), do not treat it as settled: ask it next round as its own question with the concrete failure it prevents.

When a late global constraint like "público / que cualquiera lo instale" arrives, re-research distribution and licensing before re-asking: store policies, sideload/permission hurdles for normal users (no adb), code signing, and the license of every bundled model/library. Domain facts for assistant/pet/agent apps: [references/assistant-app-constraints.md](references/assistant-app-constraints.md).

Finding _facts_ is your job, never the user's. When a frontier question needs a fact from the environment (filesystem, tools, etc.), dispatch a sub-agent to find it; don't ask the user for anything you could look up yourself. Don't block on it: a running exploration is an unsettled prerequisite, so only the questions downstream of it wait for the sub-agent to report; ask the rest of the frontier now. The _decisions_ are the user's: put each to them and wait.

The session is done when the frontier is empty: every branch of the design tree visited, nothing left silently assumed. Do not act on it until the user confirms you have reached a shared understanding.
