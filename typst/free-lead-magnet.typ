// Free Lead Magnet — 5 AI Prompts Every CA Should Try
// Matches styling from The AI Playbook for Indian CA Firms (v3)
#let accent   = rgb("#F59E0B")
#let dark     = rgb("#0F172A")
#let dark2    = rgb("#0A0F1C")
#let mid      = rgb("#4B5563")
#let muted    = rgb("#9CA3AF")
#let light-bg = rgb("#F8FAFC")
#let rule-col = rgb("#E2E8F0")

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.8cm, left: 2.8cm, right: 2.8cm),
  footer: context {
    if counter(page).get().first() > 1 {
      set text(size: 8pt, fill: muted, font: "Cormorant Garamond")
      line(length: 100%, stroke: 0.5pt + rule-col)
      v(4pt)
      grid(
        columns: (1fr, 1fr),
        align(left)[From Prompt to Practice],
        align(right)[#counter(page).display()],
      )
    }
  }
)

#set text(font: "Cormorant Garamond", size: 11.5pt, fill: mid, lang: "en")
#set par(leading: 0.9em, justify: true, spacing: 1.2em)

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(1.2cm)
  block[
    #rect(width: 2.5cm, height: 3pt, fill: accent)
    #v(0.5cm)
    #text(font: "Cormorant Garamond", size: 26pt, weight: "bold", fill: dark)[#it.body]
  ]
  v(0.8cm)
}

#show heading.where(level: 2): it => {
  v(0.6cm)
  text(font: "Cormorant Garamond", size: 16pt, weight: "bold", fill: dark)[#it.body]
  v(0.15cm)
}

#show heading.where(level: 3): it => {
  v(0.5cm)
  text(font: "Cormorant Garamond", size: 13pt, weight: "bold", fill: dark)[#it.body]
  v(0.1cm)
}

#let callout(emoji: "💡", body) = block(
  width: 100%,
  fill: light-bg,
  stroke: (left: 3pt + accent, rest: 0.5pt + rule-col),
  radius: (right: 4pt),
  inset: (x: 16pt, y: 12pt),
)[
  #text(size: 13pt)[#emoji] #h(5pt) #body
]

#let prompt-block(body) = block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #text(font: "JetBrains Mono", size: 8.5pt, fill: rgb("#E2E8F0"))[#body]
]

#let quote-block(body) = block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #text(font: "JetBrains Mono", size: 9pt, fill: rgb("#E2E8F0"))[#body]
]

// ── COVER ─────────────────────────────────────────────────────────────────────
#page(footer: none, margin: (top: 0pt, bottom: 0pt, left: 0pt, right: 0pt))[
  #place(top + left, rect(width: 100%, height: 100%, fill: dark2))
  #place(top + left, rect(width: 7pt, height: 100%, fill: gradient.linear(accent, rgb("#92400E"), angle: 180deg)))
  #place(top + right, dx: 10pt, dy: 60pt,
    text(font: "Cormorant Garamond", size: 220pt, weight: "bold", fill: rgb("#0D1520"))[AI]
  )
  #place(top + left, dx: 2.4cm, dy: 0cm)[
    #v(4cm)
    #v(4cm)
    #text(size: 42pt, weight: "bold", fill: white)[From Prompt to Practice\
AI for Indian CAs]
    #v(0.8cm)
    #rect(width: 5.5cm, height: 2pt, fill: gradient.linear(accent, rgb("#92400E")))
    #v(0.9cm)
    #text(size: 13pt, fill: rgb("#94A3B8"), style: "italic")[Real prompts for real CA workflows.\
Copy, paste, and start using them today.]
    #v(5cm)
    #text(size: 9pt, fill: rgb("#475569"), tracking: 1pt)[#upper[A companion to The AI Playbook for Indian CA Firms]]
  ]
]

// ── CONTENT ──
= How to Read This

This isn't a list of prompts. It's a progression. Each section builds on the one before it, just like how adopting AI in your practice isn't a single download — it's a sequence of small, compounding wins.

+ *Read the scenario* — Each section starts with a real situation a CA faces. If it sounds familiar, that's the point.
+ *Study the prompt* — The prompts are engineered. Every line has a reason. The role, the constraints, the output format — they compound.
+ *Run it yourself* — Copy one prompt into ChatGPT or Claude (free tier works). Use your own data. See the output.
+ *Notice the pattern* — By prompt #3 or #4, you'll start seeing the structure. That's when you're ready to write your own.

#line(length: 100%, stroke: 0.4pt + rule-col)

= 1. GST Reconciliation That Thinks Like a Partner

== The Scenario

It's the 11th of the month. GSTR-1 and GSTR-3B for last quarter aren't matching. Your article has spent three hours in Excel. The client is asking when the return will be filed. You know there are mismatches — but pinpointing every HSN-level discrepancy across six months of invoices is a full-day exercise. And you're the partner. Your time costs more than that.

== What Most CAs Try First

Paste the two tables side by side. Ask ChatGPT to "find differences." Get a vague paragraph about checking line items. Close the tab. Go back to Excel.

== The Prompt That Actually Works

#prompt-block[
[Role: Senior GST Auditor at a top-20 Indian CA firm]
You are reviewing a quarterly GST reconciliation.

Below I'll give you:
TABLE A — GSTR-1 summary (outward supplies, HSN-level)
TABLE B — GSTR-3B summary (reported liability)

Do the following, in this order:

1. IDENTIFY every line-item mismatch with exact HSN codes and amounts.
2. CLASSIFY each mismatch: (a) timing difference, (b) rate error, (c) omission, (d) duplication.
3. QUANTIFY the net tax impact of each mismatch (CGST + SGST or IGST, as applicable).
4. DRAFT corrective actions: which entries go in which month's return, which need a DRC-03, which can be self-corrected.
5. RANK the mismatches by financial exposure — highest risk first.

Format the output as a structured brief I can hand to my articles team for execution.

TABLE A (GSTR-1):
[PASTE YOUR GSTR-1 DATA HERE]

TABLE B (GSTR-3B):
[PASTE YOUR GSTR-3B DATA HERE]
]

== Why This Works

Most CAs ask AI to "compare these tables." That gets you a comparison. This prompt gets you an *actionable reconciliation brief*. The difference is the instructions: role assignment ("Senior GST Auditor"), ordered steps, classification framework, financial ranking, and output format ("brief I can hand to my articles team"). Every clause earns its place.

#line(length: 100%, stroke: 0.4pt + rule-col)

= 2. Presumptive Taxation Analysis Under 44AD/44ADA

== The Scenario

A client — doctor, consultant, small manufacturer — asks: "Should I go with 44AD or regular books this year?" Their receipts are ₹82 lakhs, cash component is 12%, expenses are messy. The wrong call costs them either unnecessary tax or an avoidable scrutiny notice. You've done this math a hundred times, but it's always a fresh spreadsheet, always an hour you don't have.

== What Most CAs Try First

Ask AI "explain Section 44AD." Get back the ICAI study material in paragraph form. Nothing you couldn't Google. Nothing the client will pay for.

== The Prompt That Actually Works

#prompt-block[
[Role: Tax advisor to a CA firm partner reviewing a client's filing strategy]

Client profile:
- Nature of business: [PROFESSION / BUSINESS / MANUFACTURING]
- Gross receipts/turnover: ₹[X]
- Cash receipts as % of total: [Y%]
- Estimated expenses (if regular books): ₹[Z]
- Any brought-forward losses: [YES/NO — if yes, ₹amount]
- Assessment history: [CLEAN / SCRUTINISED IN YEAR \_\_\_\_]

Analyse the client's position and provide:

1. ELIGIBILITY: Does the client qualify for 44AD? 44ADA? Both? Apply the cash-receipt limit test.
2. COMPARATIVE TAX COMPUTATION: Calculate taxable income under:
   a) Section 44AD presumptive (8%/6% of turnover)
   b) Section 44ADA presumptive (50% of gross receipts, if applicable)
   c) Regular books of account
   Show the effective tax rate under each option.
3. OPTIMAL RECOMMENDATION: Which path gives the lowest legitimate tax outgo? If two paths are close, prefer the one with lower scrutiny risk.
4. DOCUMENTATION CHECKLIST: What records should the client maintain to support the chosen position if a notice arrives? Be specific to this client's business type.
5. RED FLAGS: Any aspect of this client's profile that could trigger a 143(2) or 148 notice under the chosen path? Flag them explicitly.

Present as a partner-ready advisory note. No textbook definitions. No fluff.
]

== Why This Works

The difference between a prompt and a tool is *specificity*. This prompt doesn't ask AI to "explain 44AD" — it gives it a specific client, specific numbers, and asks for a comparative analysis with a recommendation. That's the output a partner reviews and signs. That's what the client pays for.

#line(length: 100%, stroke: 0.4pt + rule-col)

= 3. Risk-Based Audit Planning in 5 Minutes

== The Scenario

New audit engagement. Manufacturing client. ₹45 crore turnover. You've done the preliminary review — now you need the audit program. Which areas get the most hours? Where do you test 100% vs sample? Get this wrong and you either over-audit safe areas (burning fee recovery) or under-audit risk zones (inviting NFRA/ICAI trouble). You need a plan. Fast.

== What Most CAs Try First

"Create an audit checklist for a manufacturing company." Get a generic 200-line list with everything from cash verification to director remuneration disclosures. No risk weighting. No materiality. No link between risk and procedures.

== The Prompt That Actually Works

#prompt-block[
[Role: Engagement partner planning a statutory audit under Indian GAAP]

Client context:
- Industry: [MANUFACTURING / TRADING / SERVICES / CONSTRUCTION]
- Turnover: ₹[X] crores
- Nature: [PROPRIETORSHIP / PARTNERSHIP / PRIVATE LIMITED / PUBLIC LIMITED]
- Key metrics from preliminary review:
  • Debtor days: [X] (industry avg: [Y])
  • Inventory turnover: [X] (industry avg: [Y])
  • Gross margin: [X%] (PY: [Y%])
  • Related party transactions: ₹[X]
  • New revenue streams added this year: [YES/NO — describe if yes]
- Any prior year qualifications or CARO findings: [NONE / DESCRIBE]

Using a risk-based audit approach aligned with SA 315 and SA 330, provide:

1. INHERENT RISK ASSESSMENT: Identify the top 5 risk areas specific to this client's profile. For each: what could go wrong, and why the risk is elevated.

2. MATERIALITY: Calculate planning materiality based on the benchmarks in SA 320. Show your assumptions.

3. AUDIT PROGRAM EXTRACTS: For each of the top 3 risk areas, draft a focused audit program extract with:
   — Nature, timing, and extent of procedures
   — Sample size rationale
   — Specific assertions being tested

4. HOURS ALLOCATION: Recommend how audit hours should be distributed across areas. Flag any area where you'd deploy a senior/partner review vs article-level work.

5. EARLY WARNING: Any going concern indicators or fraud risk factors visible from the numbers provided?
]

== Why This Works

AI doesn't know SA 315 unless you tell it to apply SA 315. It doesn't compute materiality unless you ask for it. This prompt *names the standards*, supplies the benchmarks, and demands a partner-level output. The result isn't a checklist — it's a strategic audit plan you can hand to your senior and say "execute."

#line(length: 100%, stroke: 0.4pt + rule-col)

= 4. Complex Notice Response — Strategy + Draft + Client Brief

== The Scenario

Your client received a Section 148 notice (reassessment) for AY 2019-20 — the same year they already responded to a 143(1) intimation. The assessing officer is questioning a deduction claimed under Section 54F. The client is panicking. You need: a legal strategy, a draft reply, and something the client can actually read without calling you five times.

== What Most CAs Try First

"Draft a reply to a 148 notice." Get a form-letter template with [INSERT NAME] and [INSERT GROUNDS]. Useless. The client's situation is specific. Generic kills credibility.

== The Prompt That Actually Works

#prompt-block[
[Role: Senior tax litigator at a CA firm handling a reassessment matter]

Case summary:
- Client: [INDIVIDUAL / HUF / COMPANY / FIRM]
- Notice: Section 148 (reassessment) dated [DATE] for AY [YEAR]
- AO's grounds: [PASTE FROM NOTICE]
- Amount in dispute: ₹[X]
- Prior history: [e.g., original return filed u/s 139(1) on \_\_\_\_, processed u/s 143(1) with no adjustment / with adjustment of ₹\_\_\_\_]
- Key deduction/fact under challenge: [DESCRIBE]
- Client's supporting documentation status: [ALL AVAILABLE / PARTIALLY AVAILABLE / BEING RECONSTRUCTED]

Provide THREE outputs:

OUTPUT A — LEGAL STRATEGY MEMO (for internal file):
1. Is the reassessment valid? Test against the 4 conditions: (a) reason to believe, (b) recorded reasons, (c) sanction u/s 151, (d) limitation period.
2. Cite 3–5 relevant case laws (Supreme Court first, then jurisdictional High Court). Give the ratio, not just the citation.
3. Alternative arguments: if the primary defence fails, what's Plan B?
4. Likely timeline and next steps in the proceeding.

OUTPUT B — DRAFT REPLY TO AO:
Draft a formal reply that (a) acknowledges the notice, (b) responds to each ground raised, (c) cites the case law from the strategy memo, (d) requests personal hearing if applicable, (e) attaches a list of enclosures. Format as a letter with subject line, reference number block, and signature block.

OUTPUT C — CLIENT BRIEF (for WhatsApp/email):
In 8-10 sentences, in simple Hinglish or English (as preferred by client), explain:
- What the notice means (without legalese)
- What we're doing about it
- What the client needs to do (send documents, sign authorisation, etc.)
- When they'll hear from us next
- Whether they should be worried (honest assessment)

Begin drafting now. Ask me clarifying questions before proceeding if anything is unclear.
]

== Why This Works

This prompt is *three deliverables in one*. It gives you the internal strategy (law + case citations), the external filing (draft reply), and the client communication (plain-language summary). Three hours of work. One paste. Note the final instruction — asking AI to clarify before proceeding — this prevents confident wrong answers on edge cases.

#line(length: 100%, stroke: 0.4pt + rule-col)

= 5. Turning Client Onboarding From a Half-Day into 10 Minutes

== The Scenario

A new client signed this morning. Manufacturing. ₹30 crore turnover, two locations, private limited. The partner wants the audit file set up by EOD. Your article opens last year's engagement as a template, spends 45 minutes renaming folders, another hour customising checklists, and still misses the FSSAI compliance requirement because nobody thought to ask. Three hours of partner billing rate, burned on folder creation.

== What Most CAs Try First

"Create an audit working paper file." Get a generic folder list that starts with "Cash" and ends with "General." No permanent file. No industry-specific items. Nothing you couldn't have typed yourself. You still have to build the actual structure.

== The Prompt That Actually Works

#prompt-block[
[Role: Senior audit manager at a mid-sized Indian CA firm]

I'm onboarding a new statutory audit client. Generate a complete working paper file setup.

Client details:
- Name: [CLIENT NAME]
- Nature: [MANUFACTURING / TRADING / SERVICES]
- Constitution: [PROPRIETORSHIP / PARTNERSHIP / PVT LTD / PUBLIC LTD]
- Turnover: ₹[X] crores
- Locations: [SINGLE / MULTI — if multi, how many]
- First year with us? [YES / NO — if no, attach prior year significant findings]
- Industry-specific regulations: [e.g., FSSAI for food, RERA for real estate]
- Key contact: [NAME, DESIGNATION, PHONE]

Produce THREE sections:

SECTION A — PERMANENT FILE INDEX (list format):
- 15–20 items specific to this client's constitution, industry, and regulatory environment
- Include: incorporation documents, tax registrations, loan sanctions, related party declarations, board resolutions needed
- Flag the 3–4 items that are most commonly missing on first request

SECTION B — CURRENT YEAR AUDIT FILE STRUCTURE:
A folder tree with sub-folders for:
- Planning (engagement letter, independence confirmation, team assignment, budget vs actual hours)
- Risk Assessment (entity-level controls, fraud risk, going concern)
- Each balance sheet area (PPE, Inventory, Debtors, Cash, Creditors, Loans, Revenue, Expenses)
- Compliance (CARO, NFRA if applicable, ROC, tax audit)
- Completion (representation letter, subsequent events, partner review, audit report drafts)
For each folder: list the 2–3 key documents/articles that should be filed there.

SECTION C — FIRST WEEK CHECKLIST:
10–12 items the articles team should complete in Week 1 of the engagement, in priority order. For each:
- What they need from the client
- What they can prepare independently
- Estimated hours

Format as a partner-review-ready setup brief. No theoretical explanations — just the file structure I can hand to my senior and say "build this."
]

== Why This Works

This prompt converts *one client fact pattern into a complete audit infrastructure*. It's specific about the Indian audit context (CARO, NFRA, SA standards). It separates permanent file from current year file. It gives a Week 1 checklist with client dependencies and estimated hours. And it flags the edge case ("most commonly missing") — because every CA knows onboarding delays come from what gets forgotten on the first request, not from the standard list.

#line(length: 100%, stroke: 0.4pt + rule-col)

= This Is the Surface

These five prompts cover five core workflows: GST reconciliation, tax planning, audit strategy, notice response, and client onboarding. Each one is designed to produce output a partner would review and sign — not just something that "looks about right."

But they're also *just the beginning*.

== What a Month Looks Like

- *Week 1:* You run these prompts. You see what AI can actually do — not what you've heard it can do, but what it does with your data, your clients, your pressure.
- *Week 2:* Your articles start using the prompts. First drafts arrive pre-reviewed. You spend less time correcting and more time advising.
- *Week 3:* You build your first firm-specific prompt library. The prompt for "draft a 143(1) reply" now includes your firm's standard disclaimers, your preferred case citations, your tone. It's not a prompt anymore — it's a reusable asset.
- *Week 4:* You look at your timesheet. The 2-hour tasks are taking 20 minutes. The articles are producing better first drafts than you did in your third year. You're taking on more clients without adding headcount. Your billable rate just became your thinking rate — not your typing rate.

#line(length: 100%, stroke: 0.4pt + rule-col)

== The Gap Between Trying AI and Running on AI

Most CAs who "tried ChatGPT" stopped at the first bad output. The prompt wasn't specific enough. The context was missing. The expectations were wrong. They concluded AI isn't ready for CA work and went back to their old workflow.

The difference is the prompt engineering — and the system behind it. That's what *The AI Playbook for Indian CA Firms* delivers: 50 prompts across 8 chapters, each engineered to this standard. Plus 5 reusable AI skills that keep working after you close the PDF. Plus a week-by-week adoption roadmap that turns AI from something you "should try" into something your firm runs on.

#callout(emoji: "📘")[
  *The AI Playbook for Indian CA Firms* \
  50 prompts. 8 chapters. 5 reusable AI skills.

  _If this playbook doesn't save you at least 2 hours in your first month, email us for a full refund. No questions asked._
]

#v(0.5cm)
#text(size: 13pt)[
  👉 #link("https://vaidikkapoor.gumroad.com/l/ai-playbook-ca")[*Get the full playbook on Gumroad*]
]

#v(0.8cm)
#line(length: 100%, stroke: 0.4pt + rule-col)

#v(0.5cm)
Questions? Email us at #text(font: "JetBrains Mono", size: 10pt, fill: accent)[ca.ai.playbook\@agentmail\.to]

#v(0.3cm)
_#text(fill: muted)[Built for Indian CAs. Tested in a real practice. Free of jargon, paid tools, and false promises.]_