# CA Prompt Pack
### 75 Ready-to-Use AI Prompts for Indian Chartered Accountants
**Version 1.0 | 2026**

---

> **How to use this pack**
> Copy any prompt below. Paste it into Claude (claude.ai) or ChatGPT (chat.openai.com). Fill in the parts in [SQUARE BRACKETS] with your specifics. Press Enter. Edit the output as needed.
> Most prompts work with free-tier Claude or ChatGPT. No plugins or subscriptions required.

---

## SECTION 1 — Client Communication
*Notices, reminders, advisory emails, and difficult conversations*

---

### 1.1 Demand Notice Response Draft

**Use when:** A client receives a tax demand and needs you to draft a reply to the department.

**Prompt:**
```
You are a senior Chartered Accountant helping draft a formal response to an Income Tax demand notice. 

Details:
- Client name: [NAME]
- Assessment Year: [AY]
- Notice type: [e.g. 143(1) intimation / 148 reassessment / 245 adjustment]
- Demand amount: ₹[AMOUNT]
- Reason for demand as per notice: [PASTE TEXT FROM NOTICE OR SUMMARISE]
- Our position / reason to contest: [EXPLAIN CLIENT'S SIDE]

Draft a formal reply letter to the Assessing Officer. Tone: professional, factual, firm. Include a clear subject line, proper salutation, numbered points, and a request for the demand to be dropped / rectified. End with a request for a hearing date if applicable.
```

**Example output:**
> Subject: Response to Intimation u/s 143(1) for AY 2023-24 — PAN: ABCDE1234F
>
> To,
> The Assessing Officer,
> Income Tax Ward [X], [City]
>
> Sir/Madam,
>
> We write in response to the intimation dated [DATE] raising a demand of ₹1,24,500 for AY 2023-24 in the matter of M/s ABC Traders (PAN: ABCDE1234F).
>
> **1. Nature of Demand**
> The demand appears to have been raised on account of a mismatch between TDS credit claimed in the return and credit reflecting in Form 26AS at the time of processing.
>
> **2. Our Position**
> The TDS of ₹1,24,500 deducted by [Deductor Name] has since been reflected in the updated Form 26AS/AIS as of [DATE]. The mismatch was a processing delay and does not reflect any actual tax liability on the part of the assessee.
>
> **3. Relief Sought**
> We respectfully request that the demand be reduced to nil upon verification of Form 26AS / TDS reconciliation enclosed herewith. Should there be any discrepancy, we request an opportunity to be heard before any coercive action.
>
> Enclosures: Form 26AS extract, TDS certificates (Form 16A), Copy of ITR acknowledgement
>
> Yours faithfully,
> [CA Name], FCA
> [Firm Name | Membership No.]

---

### 1.2 Tax Advisory Email to Client

**Use when:** You need to explain a tax position, planning opportunity, or risk to a client in plain language.

**Prompt:**
```
You are a Chartered Accountant writing an advisory email to a client. Write in clear, simple English — no jargon unless necessary, and explain any technical terms you use. The client is a [TYPE: salaried individual / business owner / HUF / company director].

Advisory topic: [e.g. tax implication of selling residential property / ESOP taxation / switching to new tax regime]

Key points to cover:
1. [Point 1]
2. [Point 2]
3. [Point 3]

Also mention: any deadline or action required from the client, and what documents/information you need from them.

Format: professional email, warm but not informal, 3–5 short paragraphs.
```

**Example output:**
> Dear Ramesh,
>
> I hope you're keeping well. Following our call last week, I wanted to summarise the tax implications of switching to the new tax regime for FY 2025-26, so you have everything in writing before we finalise your declaration with HR.
>
> Under the new regime, your tax rate on ₹24L income works out to approximately ₹3.9L before cess — versus ₹4.1L under the old regime after your current deductions (80C + HRA + NPS). The new regime saves you roughly ₹20,000 this year. However, this only works in your favour because your HRA claim is limited given your current rent. If you shift to a higher-rent arrangement or increase your NPS contribution, the old regime could swing back in your favour.
>
> **What I need from you:** Confirm whether your rent amount is changing this year, and whether you plan to continue the NPS top-up. Reply by April 30th so I can advise HR before the April payroll.
>
> Happy to jump on a call if anything above is unclear.
>
> Warm regards,
> [CA Name]

---

### 1.3 GST Notice Response — Scrutiny

**Use when:** Client receives GST scrutiny notice and needs a formal reply.

**Prompt:**
```
Draft a formal reply to a GST scrutiny notice on behalf of a registered taxpayer.

Taxpayer details:
- Name: [NAME]
- GSTIN: [GSTIN]
- Notice reference number: [REF NO.]
- Notice date: [DATE]
- Issue raised: [e.g. mismatch between GSTR-1 and GSTR-3B for Q3 FY2023-24 / ITC reversal demand / short payment]
- Amount involved: ₹[AMOUNT]
- Our explanation: [EXPLAIN IN 2–3 LINES]

Format: formal letter to the GST officer. Use professional legal-adjacent language. Structure: opening, factual summary, our position, relief sought, enclosures list.
```

---

### 1.4 Overdue Fee Reminder — First Gentle Reminder

**Use when:** A client hasn't paid your fees and you want to follow up without damaging the relationship.

**Prompt:**
```
Write a professional but warm email reminding a client that their CA fee invoice is overdue.

Details:
- Client name: [NAME]
- Invoice number: [INV NO.]
- Invoice date: [DATE]
- Amount: ₹[AMOUNT]
- Days overdue: [X] days
- Relationship: [long-standing client / new client]

Tone: friendly but clear. Don't be apologetic for asking. Don't be harsh. Make it easy for them to pay — include a note that you're happy to receive UPI or NEFT.
```

**Example output:**
> Subject: Invoice #INV-2024-031 — Quick Follow-Up
>
> Hi Priya,
>
> Hope all's well on your end! I wanted to drop a quick note about Invoice #INV-2024-031 for ₹18,000 raised on 1st March — it's been about 3 weeks and I haven't seen it come through yet.
>
> If there's a specific date you'd like to clear it, just let me know and I'll note it. Happy to receive via UPI (9XXXXXXXXX@okicici) or NEFT (details below). If there's any issue with the invoice itself, just say the word.
>
> Thanks Priya, and no rush — just keeping the books tidy my end!
>
> [CA Name]

---

### 1.5 Overdue Fee Reminder — Final Notice

**Use when:** Second or third reminder, time to be firm.

**Prompt:**
```
Write a firm final reminder email for an overdue CA fee invoice. The client has not responded to previous reminders.

Details:
- Client name: [NAME]
- Invoice amount: ₹[AMOUNT]
- Now overdue by: [X] days
- Previous reminders sent: [NUMBER]

Tone: firm and professional, not aggressive. Make clear this is the final reminder before the matter is escalated. Mention that future work will be paused until payment is received.
```

---

### 1.6 Engagement Letter — New Client Onboarding

**Use when:** A new client is coming on board and you need a clean engagement letter.

**Prompt:**
```
Draft a professional CA engagement letter for a new client.

Details:
- Client name: [NAME / COMPANY NAME]
- Type of engagement: [e.g. GST compliance / ITR filing / full accounting + tax / statutory audit]
- Scope of work: [LIST KEY DELIVERABLES]
- Fee: ₹[AMOUNT] per [month/quarter/year] + GST
- Billing cycle: [monthly in advance / quarterly / on completion]
- Our firm name: [FIRM NAME]

Include: scope of services, what is NOT included, client responsibilities (document sharing, timelines), confidentiality clause, dispute resolution note, and a signature block for both parties.

Format: formal letter on letterhead, not a contract — professional but readable.
```

---

### 1.7 Audit Query Response to Management

**Use when:** During audit, you need to formally communicate a query or finding to client management.

**Prompt:**
```
Draft a formal audit query letter from the statutory auditor to the management of a company.

Details:
- Company name: [NAME]
- Financial year: [FY]
- Query topic: [e.g. related party transaction not disclosed / unexplained creditor / fixed asset addition without supporting invoice]
- Specific transaction/amount: [DETAILS]
- Information requested: [WHAT YOU NEED]
- Deadline for response: [DATE]

Tone: formal, neutral, non-accusatory. This is a standard audit procedure, not an allegation. Request documentary evidence and written management explanation.
```

---

### 1.8 Client Education — Budget Change Explainer

**Use when:** Budget comes out and you want to quickly explain changes to clients.

**Prompt:**
```
The Union Budget [YEAR] has announced the following changes relevant to my clients:
[PASTE OR SUMMARISE 3–5 KEY CHANGES]

Write a clear, friendly client update email explaining what these changes mean for a [salaried individual / small business owner / investor]. 

Rules:
- No technical jargon without explanation
- Use concrete examples with numbers where possible
- End with a clear action item or reassurance
- Keep it under 400 words
- Friendly but professional tone
```

---

### 1.9 Appointment Reminder — Filing Deadline

**Use when:** Nudging a client to send documents before a filing deadline.

**Prompt:**
```
Write a WhatsApp-friendly reminder message to a client about an upcoming tax filing deadline.

Details:
- Client name: [NAME]
- Filing type: [e.g. ITR, GST return, TDS return]
- Deadline: [DATE]
- Documents still needed: [LIST]
- Your cut-off (when you need documents by): [DATE]

Format: short, casual, WhatsApp-appropriate. Not an email. Use line breaks, not paragraphs. Friendly but clear about the deadline. Maximum 10 lines.
```

**Example output:**
> Hi Rajesh! 👋
>
> Quick reminder — your ITR filing deadline is July 31st.
>
> To file on time, I need the following from you by July 20th:
> • Form 16 from your employer
> • Bank interest certificates (all accounts)
> • Details of any property sold / rented this year
>
> Once I have these, I'll handle everything from my end.
>
> Let me know if you have any questions! 🙏

---

### 1.10 Breaking Bad News — Tax Demand You Couldn't Avoid

**Use when:** You need to tell a client there's a tax demand and it's legitimate.

**Prompt:**
```
Help me draft an email to a client explaining that a tax demand has come in and, after review, we believe a portion of it is legitimate and will need to be paid.

Situation:
- Client name: [NAME]
- Demand amount: ₹[TOTAL]
- Portion we can contest: ₹[AMOUNT]
- Portion that needs to be paid: ₹[AMOUNT]
- Reason: [BRIEF EXPLANATION]
- Deadline to pay: [DATE]

Tone: honest, empathetic, professional. Don't be defensive. Be clear about what happened, what we've done, and what needs to happen next. Don't bury the bad news. Clients respect directness.
```

---

## SECTION 2 — Compliance & Regulatory Language
*GST, ITR, audit observations, regulatory filings*

---

### 2.1 Audit Observation — Internal Memo Style

**Use when:** You need to write a clean audit observation for inclusion in an internal report.

**Prompt:**
```
Write a formal audit observation in the style used in statutory audit reports.

Details:
- Observation title: [e.g. "Unreconciled Creditor Balances"]
- Area: [Accounts payable / Revenue / Fixed Assets / etc.]
- Finding: [DESCRIBE WHAT YOU FOUND]
- Amount / transactions involved: [₹AMOUNT or NUMBER OF INSTANCES]
- Risk / implication: [WHY THIS MATTERS]
- Recommendation: [WHAT THE COMPANY SHOULD DO]

Format: use standard audit memo structure — Observation, Impact, Root Cause (if known), Recommendation, Management Response (leave blank). Professional, crisp, no unnecessary words.
```

**Example output:**
> **Observation: Trade Payables Not Confirmed via Balance Confirmation**
>
> **Area:** Accounts Payable
>
> **Finding:** Out of 48 trade creditors with balances exceeding ₹1L as at 31 March 2024, balance confirmation letters were sent to 31. Responses were received from only 14. The remaining 17 creditors (aggregate balance: ₹34.7L) have not been confirmed.
>
> **Impact:** Unconfirmed balances represent a risk of over/understatement of liabilities. In the absence of confirmation, reliance is placed on client's books without independent corroboration.
>
> **Root Cause:** Balance confirmation process initiated late in the audit cycle (mid-April vs. recommended February).
>
> **Recommendation:** Management should initiate the balance confirmation process by January 31st each year. A formal follow-up protocol with a second reminder and escalation to senior management should be documented.
>
> **Management Response:** [To be filled by management]

---

### 2.2 GST Reconciliation Note

**Use when:** You need to document GST reconciliation workings clearly.

**Prompt:**
```
Write a GST reconciliation note explaining the difference between GSTR-1 and GSTR-3B for a client's records and potential audit purposes.

Details:
- GSTIN: [GSTIN]
- Period: [QUARTER / MONTH]
- GSTR-1 outward supplies: ₹[AMOUNT]
- GSTR-3B outward supplies declared: ₹[AMOUNT]
- Difference: ₹[AMOUNT]
- Reason for difference: [e.g. credit notes filed in next period / amendment in subsequent month / timing difference]

Format: brief reconciliation note suitable for internal documentation. Should read as a clear explanation, not a table.
```

---

### 2.3 Transfer Pricing — Comparable Search Note

**Use when:** You need a brief documentation note on comparables used for a TP study.

**Prompt:**
```
Draft a transfer pricing comparable search note for internal documentation.

Details:
- Taxpayer: [NAME]
- Related party transaction: [e.g. provision of IT services to parent company in [COUNTRY]]
- Amount: ₹[AMOUNT]
- Transfer pricing method used: [TNMM / CUP / CPM / etc.]
- Comparables selected: [LIST 3–5 COMPANY NAMES OR DESCRIBE SEARCH CRITERIA]
- PLI (Profit Level Indicator) used: [e.g. Operating Profit / Net Cost]
- Result: [RANGE OR MEDIAN]

Write a one-page documentation note explaining the search process, rationale for method selection, and conclusion on arm's length pricing.
```

---

### 2.4 Tax Audit Observation — Clause 44 Expenditure

**Use when:** Preparing or reviewing Form 3CD and need to draft an explanatory note.

**Prompt:**
```
Draft a note for Form 3CD Clause 44 expenditure breakdown for [BUSINESS NAME].

Financial year: [FY]
Total expenditure: ₹[AMOUNT]

Breakdown:
- Expenditure with GST registered suppliers: ₹[AMOUNT]
- Of which: subject to composition: ₹[AMOUNT]
- Expenditure with unregistered suppliers: ₹[AMOUNT]
- Exempt / non-GST expenditure: ₹[AMOUNT]
- Import of goods/services: ₹[AMOUNT]

Write this as a professional disclosure note, as would appear in a tax audit documentation file. Include a brief methodology note explaining how the classification was done.
```

---

### 2.5 Director's Report — Going Concern Note

**Use when:** Company is borderline and you need careful language in the Director's Report.

**Prompt:**
```
Draft a going concern note for inclusion in a company's Director's Report.

Situation:
- Company name: [NAME]
- Key concerns: [e.g. accumulated losses, negative net worth, working capital stress, dependence on promoter loans]
- Mitigating factors: [e.g. order book, promoter support letter, cost reduction plan, new funding]
- Auditor's position: [unqualified with emphasis / qualified / CARO going concern flag]

Write a balanced, honest note acknowledging the concerns while presenting the mitigating factors. Should be appropriate for statutory filing. Not defensive, not catastrophising.
```

---

### 2.6 ITR Filing — Covering Letter for Complex Cases

**Use when:** Filing an ITR with unusual items and you want a covering note for the client's records.

**Prompt:**
```
Draft a brief covering letter/memo to accompany an ITR filing, summarising what was filed and flagging any positions that could attract scrutiny.

Client: [NAME]
AY: [AY]
Income heads: [LIST — e.g. salary, business, capital gains]
Total income declared: ₹[AMOUNT]
Tax paid: ₹[AMOUNT]
Refund claimed: ₹[AMOUNT]

Positions that may attract query:
1. [e.g. Capital loss on penny stocks claimed]
2. [e.g. Business deduction of ₹X for home office]

Write a short professional memo: what was filed, how tax was computed in brief, and a note on positions taken with rationale. For client file, not for submission to department.
```

---

### 2.7 FEMA Compliance — LRS Remittance Advisory

**Use when:** A client wants to remit money abroad and needs an advisory.

**Prompt:**
```
Draft a brief advisory note to a client about the Liberalised Remittance Scheme (LRS) under FEMA.

Client type: [Individual / HUF]
Purpose of remittance: [e.g. overseas education / investment in foreign stocks / maintenance of relative]
Amount: USD [AMOUNT]

Cover: LRS annual limit, permissible purposes for this type of remittance, TCS implications (rate, when applicable, how to claim credit), bank documentation likely to be required, any prohibited uses to flag.

Format: plain English advisory, not a legal brief. Short paragraphs.
```

---

### 2.8 CARO 2020 — Fraud Reporting Note

**Use when:** You've identified something that may need to be reported under CARO's fraud clause.

**Prompt:**
```
Draft a CARO 2020 Clause 11 (fraud) disclosure note for the audit report.

Situation:
- Company: [NAME]
- Nature of fraud / suspected fraud: [DESCRIBE]
- Amount involved: ₹[AMOUNT]
- Perpetrators (if identified): [officers / employees / third parties / unknown]
- Management's awareness and action taken: [DESCRIBE]
- Auditor's conclusion: [Whether this rises to the level of reporting / is still under investigation]

Draft this as a formal CARO disclosure in the auditor's report. Tone: factual, legally careful, no speculation.
```

---

### 2.9 ITR Scrutiny — Common Query Responses

**Use when:** Drafting responses to standard scrutiny questionnaires (CASS cases).

**Prompt:**
```
Draft a response to an income tax scrutiny query for the following:

Taxpayer: [NAME], PAN: [PAN], AY: [AY]
Query raised by department: [PASTE THE SPECIFIC QUERY]

Our response:
- Factual position: [EXPLAIN]
- Documents available: [LIST]
- Legal basis (if any): [SECTION / CIRCULAR / CASE LAW]

Draft a formal written submission in response to this specific query. Numbered, clear, attach enclosures list at end.
```

---

### 2.10 Statutory Audit Report — Emphasis of Matter Paragraph

**Use when:** You need to include an emphasis of matter without qualifying your opinion.

**Prompt:**
```
Draft an "Emphasis of Matter" paragraph for a statutory audit report.

Situation:
- Company: [NAME]
- Matter to emphasise: [e.g. litigation outcome uncertainty / going concern risk / restatement of prior year / regulatory proceedings]
- Reference note in financial statements: [NOTE NUMBER]
- Auditor's opinion on financial statements: [Unmodified / we are still giving clean opinion but flagging this]

Format: precise ICAI-compliant language. Single paragraph. Do not use words that modify the audit opinion. Make clear it's an emphasis, not a qualification.
```

---

## SECTION 3 — Internal Firm Operations
*Staff instructions, review notes, internal memos, templates*

---

### 3.1 Article Training — Explaining a Concept

**Use when:** You need to explain an accounting or tax concept to a junior article in simple terms.

**Prompt:**
```
Explain [CONCEPT] to a CA article in their second year of training. 

Concept: [e.g. deferred tax / transfer pricing documentation / revenue recognition under Ind AS 115 / CARO reporting]

They have theoretical knowledge from ICAI exams but limited practical exposure. Use:
- A simple plain-English explanation first
- Then a practical worked example using realistic Indian rupee amounts
- Then 2–3 common mistakes to watch out for in practice
- Keep it under 500 words total
```

---

### 3.2 Work Allocation Memo — Busy Season

**Use when:** Distributing work to articles during ITR season or audit season.

**Prompt:**
```
Draft a work allocation memo to distribute among [NUMBER] CA articles during [ITR / GST / audit] season.

Work to be distributed:
[LIST THE CLIENTS / TASKS — e.g. 
- 12 individual ITR cases (varying complexity)
- 3 small company audits
- Monthly GST reconciliation for 8 clients]

Staff:
- [ARTICLE 1 NAME]: [EXPERIENCE LEVEL / STRENGTHS]
- [ARTICLE 2 NAME]: [EXPERIENCE LEVEL / STRENGTHS]
- [ARTICLE 3 NAME]: [EXPERIENCE LEVEL / STRENGTHS]

Create a fair allocation with clear ownership, deadline column, and a note on priority order. Format as a simple table.
```

---

### 3.3 Review Comment — File Review Note

**Use when:** Reviewing an article's work and giving written feedback.

**Prompt:**
```
Write a structured file review note for a CA article's work.

Context:
- Client: [NAME]
- Work reviewed: [e.g. ITR computation / bank reconciliation / audit working paper]
- Reviewer: [YOUR NAME / PARTNER NAME]

Issues found:
1. [ISSUE 1]
2. [ISSUE 2]
3. [ISSUE 3]

Format: numbered review points, each with: what was wrong, why it matters, and what the correct approach should be. Tone: firm but constructive — this is for training, not punishment. End with overall assessment (acceptable / needs revision / major rework needed).
```

---

### 3.4 Standard Operating Procedure — GST Filing

**Use when:** Documenting your firm's standard process for a recurring task.

**Prompt:**
```
Create a standard operating procedure (SOP) for [TASK] in a small CA firm.

Task: [e.g. monthly GST filing process / TDS compliance / closing a client's books at year-end]

The SOP should include:
- Purpose of the procedure
- Who is responsible (partner / senior article / junior article)
- Step-by-step process with checkpoints
- Common errors to watch for
- What to do if something goes wrong
- Sign-off/review requirements

Format: numbered steps. Should be clear enough for a new article to follow on their first month.
```

---

### 3.5 Staff Performance Feedback — Annual Review

**Use when:** Conducting annual appraisals for articles or staff.

**Prompt:**
```
Draft an annual performance review note for a CA article.

Details:
- Name: [ARTICLE NAME]
- Year of training: [1st / 2nd / 3rd]
- Tenure at firm: [X months]
- Key assignments completed: [LIST 2–3]
- Strengths observed: [LIST]
- Areas for improvement: [LIST]
- Any incidents (positive or negative): [IF RELEVANT]
- Recommended next steps: [e.g. assign more complex audits / keep on GST work / leadership responsibilities]

Format: professional appraisal letter, not a report card. Balanced — acknowledge effort, be honest about gaps, clear on expectations for next year. End with encouragement.
```

---

### 3.6 Partner Meeting Agenda — Monthly Review

**Use when:** Preparing for a monthly partners' or practice meeting.

**Prompt:**
```
Draft a structured agenda for a monthly partners' meeting for a small CA firm.

Context:
- Firm size: [e.g. 2 partners, 6 articles]
- Month: [MONTH YEAR]
- Standing agenda items: billing review, pending deadlines, new business, staff matters
- Special items this month: [ADD ANY SPECIFIC TOPICS]
- Duration: [60 / 90 minutes]

Format: time-boxed agenda with owner for each item. Include a brief framing question for each item to focus discussion. Add space for action items at the end.
```

---

### 3.7 Client Onboarding Checklist

**Use when:** Taking on a new client — ensuring you collect everything before starting work.

**Prompt:**
```
Create a client onboarding document checklist for a new [TYPE] client at a CA firm.

Client type: [Individual ITR / Proprietorship / Private Limited Company / Partnership Firm]
Services engaged for: [GST / Tax / Audit / All compliance]

Generate a comprehensive but practical checklist of documents to collect, categorised by:
1. Identity and registration documents
2. Tax registration documents
3. Financial records
4. Previous compliance records
5. Banking details
6. Other (entity-specific)

Also include a section on information to collect verbally / understand about the client (business model, related parties, bank accounts, litigation history etc.)
```

---

### 3.8 Internal Alert — Deadline Tracker Entry

**Use when:** Creating or updating an internal deadline note for a client.

**Prompt:**
```
Draft a brief internal compliance calendar entry / deadline alert for the following:

Client: [NAME]
Deadline: [DATE]
Filing type: [e.g. GSTR-3B for April / TDS return Q4 / Income Tax Advance Tax / ROC Annual Filing]
Responsible person: [NAME]
Documents needed from client by: [DATE — should be 7–10 days before deadline]
Notes: [ANYTHING UNUSUAL ABOUT THIS CLIENT'S CASE]

Format: a clean internal note, 5–8 lines, that can go in a WhatsApp group or internal tracker.
```

---

### 3.9 Proposal for New Audit Engagement

**Use when:** Bidding for a new audit or compliance assignment.

**Prompt:**
```
Draft a professional proposal letter for a new CA engagement.

Context:
- Prospect name: [COMPANY NAME]
- Type of engagement: [Statutory Audit / Internal Audit / Tax Advisory / Full Compliance]
- Their business: [BRIEF DESCRIPTION]
- Our firm's relevant experience: [2–3 RELEVANT POINTS]
- Proposed fee: ₹[AMOUNT] + GST per [year/quarter]

Cover: why we're a good fit, brief scope of work, our approach, fee, and next steps. 

Tone: confident but not salesy. This is a professional proposal, not a pitch deck. 2–3 pages equivalent. No bullet soup — write in proper paragraphs.
```

---

### 3.10 Disengagement Letter

**Use when:** Parting ways with a client (for whatever reason) and need to do it professionally.

**Prompt:**
```
Draft a professional disengagement letter from a CA firm to a client.

Details:
- Client name: [NAME]
- Reason (choose tone accordingly):
  [ ] Mutual agreement / natural end of engagement
  [ ] Non-payment of fees
  [ ] Irreconcilable differences / client not following advice
  [ ] Conflict of interest
- Outstanding matters: [e.g. pending ITR for AY / GST returns / audit work in progress]
- Handover: [what we will / won't transfer and timeline]
- Outstanding fees: ₹[AMOUNT] if any

Tone: professional, clear, no bridges burned (even if the relationship was difficult). State clearly what we are and aren't responsible for after this date. End with a wish for their future.
```

---

## SECTION 4 — Business Development
*LinkedIn content, proposals, firm branding, networking*

---

### 4.1 LinkedIn Post — Tax Tip (Educational)

**Use when:** You want to post useful content on LinkedIn to build your profile as a CA.

**Prompt:**
```
Write a LinkedIn post from the perspective of an Indian Chartered Accountant sharing a useful tax tip or insight.

Topic: [e.g. "5 things salaried employees forget before submitting their investment declaration" / "Why your GST ITC might get rejected" / "The new rule on TDS on rent every landlord should know"]

Format:
- Hook in the first line (no "I'm happy to share" openers — get to the point)
- 4–6 short, scannable bullet points or numbered steps
- Practical, specific, actionable
- Closing line that invites engagement or offers help
- 3–4 relevant hashtags at the end
- Max 250 words

Tone: expert but accessible. You're helping, not lecturing.
```

**Example output:**
> Your Form 16 doesn't tell the whole story.
>
> 4 things your employer can't capture — that you need to declare yourself:
>
> 1. **Interest on savings account** — Even ₹10,000 in interest is taxable. Check all your accounts, including dormant ones.
> 2. **Rent income** — If you've let out a property (even to family at below-market rent), it needs to be declared.
> 3. **Capital gains** — Mutual fund redemptions, stock sales, property sold — your employer has no visibility on this.
> 4. **Freelance income** — Side projects, consulting, referral fees — all taxable, even if received in cash.
>
> Most of these are simple to declare. The risk of not doing it isn't worth it.
>
> Filing your ITR in the next few weeks? DM me if you need help.
>
> #IncomeTax #ITR2024 #TaxTips #CharteredAccountant #PersonalFinanceIndia

---

### 4.2 LinkedIn Post — Client Win Story (Without Naming Client)

**Use when:** You want to share a success story professionally.

**Prompt:**
```
Write a LinkedIn post describing a client win or problem-solving moment, without naming the client.

Situation:
- Client type: [e.g. small retailer / startup founder / salaried professional]
- Problem they came with: [DESCRIBE]
- What we found / did: [DESCRIBE YOUR ANALYSIS OR ACTION]
- Outcome: [QUANTIFY IF POSSIBLE — e.g. saved ₹X in tax / resolved ₹Y demand / filed retroactively]

Format: short story format — Problem → Insight → Action → Outcome. No jargon. First person. Relatable. Max 200 words. End with a lesson or takeaway.
```

---

### 4.3 LinkedIn Bio — CA Professional Profile

**Use when:** Writing or refreshing your LinkedIn summary.

**Prompt:**
```
Write a LinkedIn "About" section for an Indian CA.

Details:
- Name: [NAME]
- Qualified: [YEAR], ICAI Membership No. [NUMBER]
- Specialisation: [e.g. tax advisory / startup compliance / family office / manufacturing sector audit]
- Years of experience: [X]
- Type of practice: [Solo / Firm with X partners / Industry role]
- 2–3 notable things you've done: [e.g. managed tax matters for 200+ clients / set up compliance for 3 funded startups / specialism in FEMA]
- What you want the profile to achieve: [e.g. attract HNI clients / get referrals from bankers / build thought leadership]

Write a compelling 150–200 word About section. No boring "I am a qualified CA with X years of experience" openers. Start with what you do for clients, not your credentials.
```

---

### 4.4 Referral Thank You — Professional Note

**Use when:** Someone refers a client and you want to acknowledge it professionally.

**Prompt:**
```
Write a warm thank-you note to a professional who referred a client to me.

Context:
- Referrer: [NAME — e.g. banker / lawyer / other CA / mutual friend]
- What they referred: [TYPE OF CLIENT / BRIEF DESCRIPTION]
- Our relationship: [CLOSE / PROFESSIONAL ACQUAINTANCE]

Format: short message (5–8 lines), suitable for WhatsApp or email. Warm, specific (mention what they referred, not generic "thanks for the referral"), no over-effusiveness. End with a reciprocal offer or genuine note about staying in touch.
```

---

### 4.5 WhatsApp Group Message — Free Tip to Build Trust

**Use when:** You want to share something valuable in a CA or client WhatsApp group.

**Prompt:**
```
Write a WhatsApp message sharing a useful tax or compliance tip, suitable for posting in a professional WhatsApp group.

Topic: [e.g. new deadline announced / common mistake in GSTR-9 / Budget change that affects small businesses]

Rules:
- No formatting that doesn't work on WhatsApp (no headers, minimal bold)
- Short and scannable — 8–12 lines max
- Practical and specific — one clear thing the reader should know or do
- End with: your name + "Happy to help if anyone has questions"
- Don't sound like an advertisement

Tone: helpful colleague, not salesman.
```

---

### 4.6 Speaking Bio — Seminar or Webinar Introduction

**Use when:** Being introduced as a speaker at an ICAI event, seminar, or webinar.

**Prompt:**
```
Write a speaker introduction bio for a CA presenting at a professional seminar.

Details:
- Name: [NAME]
- Firm: [FIRM NAME]
- Specialisation: [TOPIC OF TALK / THEIR EXPERTISE]
- Credentials: [ICAI membership, any committees, publications, etc.]
- Notable achievements: [2–3 highlights]
- Topic of today's presentation: [TITLE]

Format: 75–100 words, suitable to be read aloud by an emcee. Third person. Professional but not dry. Should build credibility without being a full CV recitation.
```

---

### 4.7 Practice Brochure Copy

**Use when:** Writing copy for a CA firm brochure, website "About" page, or firm presentation.

**Prompt:**
```
Write copy for a CA firm's services brochure / website about page.

Firm details:
- Firm name: [NAME]
- Established: [YEAR]
- Partners: [NUMBER], total team: [SIZE]
- City: [CITY / CITIES]
- Core services: [LIST — e.g. statutory audit, tax advisory, GST, startup compliance]
- Client profile: [e.g. SMEs, HNI individuals, exporters, startups]
- Differentiator: [WHAT MAKES YOU DIFFERENT — be honest and specific]

Write 3 sections:
1. About the firm (80 words)
2. Our services (5–6 bullet points with a line each)
3. Why clients choose us (80 words)

Tone: professional, confident, not generic. Avoid phrases like "one-stop solution" and "committed to excellence." Say something real.
```

---

### 4.8 Fee Quote Email

**Use when:** Responding to a prospect inquiry with a fee quote.

**Prompt:**
```
Draft a fee proposal email to a prospective client.

Context:
- Prospect name: [NAME]
- They enquired about: [SERVICES]
- Their business type: [DESCRIBE]
- Proposed scope: [WHAT YOU'LL DO]
- Fee: ₹[AMOUNT] per [period] + 18% GST
- What's included: [LIST]
- What's not included: [LIST — e.g. TDS filing, MCA ROC filings, representation before department]
- Billing: [Advance monthly / quarterly]

Format: professional email. Don't bury the fee. State it clearly. Explain what they're getting. End with an invitation to discuss or ask questions. Not a formal contract — just a clear, friendly quote.
```

---

### 4.9 Networking Follow-Up — After Meeting at ICAI Event

**Use when:** You met someone at a seminar or ICAI event and want to follow up.

**Prompt:**
```
Write a follow-up LinkedIn message or email to someone I met at an ICAI event or professional seminar.

Details:
- Their name: [NAME]
- Event: [NAME OF EVENT]
- What we talked about: [1–2 topics]
- What I want from the follow-up: [Stay in touch / explore referral relationship / collaborate on a specific thing]

Format: short (5–8 lines), specific to our conversation (mention what we discussed), genuine — not a template. No "it was a pleasure meeting you" as the opener — start with something specific we discussed.
```

---

### 4.10 Testimonial Request — Asking Happy Clients

**Use when:** You want to collect client testimonials for your website or LinkedIn.

**Prompt:**
```
Write a message asking a happy client for a testimonial or Google review.

Context:
- Client name: [NAME]
- Service you provided: [e.g. ITR filing / audit / GST cleanup]
- Positive signal from them: [e.g. they thanked you recently / renewed / referred someone]
- Where you want the review: [Google / LinkedIn / written quote for website]

Format: WhatsApp-appropriate message, short and genuine. Don't be transactional or pushy. Frame it as helping others make informed decisions. Make it easy — include a direct link if possible or offer to draft something they can edit.
```

---

## BONUS SECTION — Power Prompts

### B.1 Summarise Any Document

```
You are a CA's assistant. Read the following document and give me:
1. A one-paragraph summary of what this document is about
2. The 5 most important points
3. Any action items or deadlines mentioned
4. Any risks or issues I should flag to my client

[PASTE DOCUMENT TEXT HERE]
```

---

### B.2 Draft a Quick Reply to Any Email

```
I received the following email. Draft a professional reply.

Original email:
[PASTE EMAIL]

My intended response:
[EXPLAIN IN 2–3 LINES WHAT YOU WANT TO SAY]

Tone: [professional / warm / firm / brief]
Length: [short 3–4 lines / full response]
```

---

### B.3 Turn Bullet Points Into a Professional Email

```
Turn these rough notes into a professional email.

Notes:
[PASTE YOUR BULLET POINTS OR ROUGH THOUGHTS]

Context: This is from a CA to a [client / colleague / banker / government officer]
Tone: [professional / advisory / firm / friendly]
Length: keep it concise.
```

---

### B.4 Explain a Legal Section in Plain Language

```
Explain Section [X] of the [Income Tax Act / GST Act / Companies Act] in simple language.

My context: I need to explain this to [a small business owner / a salaried client / an article / a banker] who has no legal background.

Include:
- What the section says in plain English
- A practical example using Indian rupees
- What my client / I need to do (or not do) because of this section
```

---

### B.5 Create a Checklist From a Procedure

```
I have a complex compliance or audit procedure to manage. Turn it into a numbered checklist I can give to my article.

Procedure: [DESCRIBE OR PASTE NOTES]

Format: numbered checklist with checkbox format. Group by phase (preparation / execution / review / filing). Include a "who is responsible" column and an estimated time for each step.
```

---

*End of CA Prompt Pack v1.0*
*© 2026 | For licensed CAs and CA firms in India*
*Questions or feedback? [CONTACT DETAILS]*
