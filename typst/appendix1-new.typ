= Appendix 1: Starter Skills for CA Firms

Below are 5 fully detailed skills in proper format. Each includes the Claude Skill (SKILL.md format for Claude Projects) and the Custom GPT equivalent (for ChatGPT). Copy-paste directly into your platform of choice.

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== Skill 1: GST 2B Reconciler

_Reconcile a client's GSTR-2B with their purchase register. Use monthly or quarterly._

=== Claude Skill (SKILL.md)

#quote-block[---
name: gst-2b-reconciler
description: Reconciles GSTR-2B with purchase register from Tally or Zoho. Use when you need to match invoices, find mismatches, and calculate ITC at risk for a client.
---

\# GST 2B Reconciler

\#\# Overview
Reconcile a client's GSTR-2B download against their purchase register. Produces mismatch tables and ITC risk summary.

\#\# Workflow

\#\#\# Step 1: Receive Files
User uploads two files:
- GSTR-2B download (Excel or CSV)
- Purchase register from Tally or Zoho (Excel or CSV)

\#\#\# Step 2: Match Invoices
- Identify GSTIN column and invoice number column in both files
- If column headers don't match expected names, ask the user to clarify
- Match invoices by supplier GSTIN + invoice number

\#\#\# Step 3: Produce Output
Generate three tables:

Table A: Invoices in GSTR-2B but NOT in purchase register
(potential missed bookings)

Table B: Invoices in purchase register but NOT in GSTR-2B
(ITC at risk — supplier hasn't filed)

Table C: Matched invoices where taxable value or tax amount differs by more than ₹100

For each table show: Supplier GSTIN, Supplier Name (if available), Invoice Number, Invoice Date, 2B Amount, Books Amount, Difference.

\#\#\# Step 4: Summary
- Total count and value for each category
- Net ITC impact (how much ITC is at risk)
- One-line recommendation (e.g., "Follow up with 3 suppliers for missing invoices")

\#\# Output Format
Tables only. No narrative unless asked. Use Indian number formatting (₹, lakhs for amounts over ₹1,00,000). Round to nearest rupee.]

=== Custom GPT Setup

#quote-block[Name: GST 2B Reconciler

Instructions: (paste the Workflow and Output Format sections from the Claude Skill above)

Conversation Starters:
• Reconcile these two GST files
• Show me only mismatches above ₹5,000
• What's the total ITC at risk?

Knowledge Files: None required — works from uploaded files each time.]

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== Skill 2: IT Demand Notice Responder

_Draft a formal reply to an Income Tax demand notice for a client._

=== Claude Skill (SKILL.md)

#quote-block[---
name: it-notice-responder
description: Drafts formal responses to Income Tax demand notices for Indian taxpayers. Use when a client receives a 143(1), 148, or 245 notice and needs a professional reply to the Assessing Officer.
---

\# IT Demand Notice Responder

\#\# Overview
Draft professional reply letters to Income Tax demand notices. Produces formal correspondence ready for review and filing.

\#\# Workflow

\#\#\# Step 1: Collect Details
Ask the user for (if not already provided):
- Client name and PAN
- Assessment Year
- Notice type (143(1) intimation / 148 reassessment / 245 adjustment)
- Demand amount
- Reason for demand as per notice
- Client's position / reason to contest

\#\#\# Step 2: Draft Reply
Structure the letter as:
- Subject line with section reference, AY, and PAN
- Addressed to: The Assessing Officer, Ward/Circle, City
- Opening: reference notice date and demand amount
- Numbered points covering:
  1. Nature of demand (what the department claims)
  2. Our position (factual, with supporting references)
  3. Relief sought (demand be dropped/reduced, request for hearing)
- Enclosures list (Form 26AS, TDS certificates, ITR acknowledgement, etc.)
- Sign-off block: CA Name, FCA/ACA, Firm Name, Membership No.

\#\# Output Format
Formal letter format. Professional, factual, firm tone. No aggression. Numbered points. Ready to print on letterhead.]

=== Custom GPT Setup

#quote-block[Name: IT Notice Responder

Instructions: (paste the Workflow and Output Format sections above)

Conversation Starters:
• My client received a 143(1) demand
• Draft a response to this reassessment notice
• Help me reply to a tax demand of ₹2.5 lakhs

Knowledge Files: None required.]

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== Skill 3: Client Email Tone-Matcher

_Draft client emails that sound like you, not like AI._

=== Claude Skill (SKILL.md)

#quote-block[---
name: client-email-tone-matcher
description: Drafts client emails matching the CA's personal communication style. Use when writing advisory emails, fee discussions, bad news delivery, or routine updates. Requires 3 sample emails from the CA during setup.
---

\# Client Email Tone-Matcher

\#\# Setup (one time)
Before first use, the CA should paste 3 real emails they've sent to clients into the Project's reference files. Label them:
- Sample 1: advisory/informational email
- Sample 2: fee or payment-related email
- Sample 3: bad news or difficult conversation email

The skill uses these to match the CA's natural voice.

\#\# Workflow

\#\#\# Step 1: Understand Context
Ask the user for:
- Client name and relationship (long-standing / new / sensitive)
- Purpose of email (advisory / reminder / bad news / update / follow-up)
- Key points to cover (2-3 bullet points)
- Tone preference if different from default (warmer / more formal / firmer)

\#\#\# Step 2: Draft
- Match the CA's natural writing style from the samples
- Use the client's name naturally
- Keep paragraphs short (3-4 sentences max)
- End with a clear action item or next step
- Include standard sign-off from firm profile

\#\# Output Format
Email format: subject line + body. Ready to paste into email client. No placeholders — use the actual names and details provided.]

=== Custom GPT Setup

#quote-block[Name: Client Email Tone-Matcher

Instructions: (paste the Setup, Workflow, and Output Format sections above)

Conversation Starters:
• Draft an advisory email to a long-standing client about the new tax regime
• Write a gentle fee reminder to Priya (overdue 3 weeks)
• I need to tell a client about a legitimate tax demand

Knowledge Files: Upload 3 sample emails you've written to clients.]

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== Skill 4: ITR Checklist Reviewer

_Review an ITR computation for completeness before filing._

=== Claude Skill (SKILL.md)

#quote-block[---
name: itr-checklist-reviewer
description: Reviews ITR computations and supporting documents for completeness before filing. Flags missing items, common errors, and positions that may attract scrutiny. Use before submitting any individual or business ITR.
---

\# ITR Checklist Reviewer

\#\# Overview
Pre-filing quality check for ITR computations. Catches common errors and missing items before submission.

\#\# Workflow

\#\#\# Step 1: Receive Information
User provides:
- ITR form type (ITR-1 / ITR-2 / ITR-3 / ITR-4)
- Assessment Year
- Income heads (salary, business, capital gains, house property, other)
- Key figures: total income, tax payable, TDS claimed, advance tax, refund (if any)
- Any unusual items or positions taken

\#\#\# Step 2: Review
Check against a standard checklist:
- All income heads accounted for (cross-check with Form 26AS/AIS)
- TDS credit matches 26AS
- Advance tax challan details included
- Section 80 deductions have supporting proof
- Capital gains: holding period, indexation, reinvestment claims verified
- House property: rental income or deemed rental computed correctly
- Bank interest from all accounts included (including dormant accounts)
- Foreign assets / foreign income disclosure (if applicable)

\#\#\# Step 3: Flag Issues
For each issue found:
- What's missing or wrong
- Why it matters (penalty risk, scrutiny risk, or just good practice)
- Suggested fix

\#\# Output Format
Numbered checklist. Green checkmark for items that pass. Red flag for items that need attention. Summary at top: "X items reviewed, Y need attention."]

=== Custom GPT Setup

#quote-block[Name: ITR Checklist Reviewer

Instructions: (paste the Workflow and Output Format sections above)

Conversation Starters:
• Review this ITR-2 computation before I file
• Check if I've missed anything for AY 2025-26
• Flag any positions that might attract scrutiny

Knowledge Files: None required.]

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== Skill 5: Engagement Letter Generator

_Generate professional engagement letters for new clients._

=== Claude Skill (SKILL.md)

#quote-block[---
name: engagement-letter-generator
description: Generates professional CA engagement letters for new clients. Covers scope, exclusions, fees, client responsibilities, and confidentiality. Use when onboarding any new client or renewing an existing engagement.
---

\# Engagement Letter Generator

\#\# Setup (one time)
Add to the Project's reference files:
- Your firm's standard letterhead details (name, address, registration numbers)
- Your firm's standard terms (payment terms, dispute resolution clause)
- Your standard confidentiality language

\#\# Workflow

\#\#\# Step 1: Collect Details
Ask the user for:
- Client name (individual or company)
- Type of engagement (GST compliance / ITR filing / statutory audit / full accounting + tax / internal audit / advisory)
- Specific deliverables
- Fee: amount per period + GST
- Billing cycle (monthly advance / quarterly / on completion)
- Start date

\#\#\# Step 2: Generate Letter
Include:
- Scope of services (specific, not vague)
- What is NOT included (be explicit — e.g., "TDS compliance is not covered under this engagement")
- Client responsibilities (document sharing timelines, information accuracy, access to records)
- Fee and payment terms
- Confidentiality clause
- Dispute resolution (arbitration in [City])
- Termination: 30-day written notice by either party
- Signature blocks for both parties with date lines

\#\# Output Format
Formal letter on letterhead format. Professional but readable — not a dense legal contract. 2-3 pages. Ready for review and signature.]

=== Custom GPT Setup

#quote-block[Name: Engagement Letter Generator

Instructions: (paste the Setup, Workflow, and Output Format sections above)

Conversation Starters:
• Generate an engagement letter for a new GST compliance client
• Draft a letter for a statutory audit engagement at ₹75,000 + GST
• Create a renewal letter for an existing ITR filing client

Knowledge Files: Upload your firm's standard letterhead template and terms document.]

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== 10 More Skill Ideas

Build these as your skill library grows. Each follows the same pattern: YAML frontmatter, overview, workflow steps, output format.

+ *Old vs New Regime Calculator* — Computes tax under both regimes with side-by-side comparison and recommendation
+ *GST Notice Reply Drafter* — Prepares responses to GST show cause notices and demand orders
+ *Bank Statement Analyser* — Categorises transactions, flags cash deposits over ₹50,000, summarises by month
+ *Trial Balance Reviewer* — Flags unusual balances, year-over-year changes, and errors in Tally exports
+ *Tax Update Explainer* — Converts CBDT circulars and GST notifications into plain-language client updates
+ *Audit Observation Drafter* — Converts audit findings into formal CARO/audit report paragraphs
+ *TDS Reconciler* — Matches TDS entries across books, 26AS, and Form 16/16A
+ *NRI Tax Advisor* — Determines residential status and applicable tax treatment for NRI clients
+ *Capital Gains Calculator* — Computes LTCG/STCG for equity, debt, and property with indexation
+ *Compliance Calendar Briefing* — Weekly summary of upcoming statutory deadlines with action items

