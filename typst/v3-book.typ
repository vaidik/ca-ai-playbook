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
        align(left)[The AI Playbook for Indian CA Firms],
        align(right)[#counter(page).display()],
      )
    }
  }
)

#set text(font: "Cormorant Garamond", size: 12pt, fill: mid, lang: "en")
#set par(leading: 0.9em, justify: true, spacing: 1.2em)

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(2cm)
  block[
    #rect(width: 2.5cm, height: 3pt, fill: accent)
    #v(0.6cm)
    #text(font: "Cormorant Garamond", size: 28pt, weight: "bold", fill: dark)[#it.body]
  ]
  v(1cm)
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

#let quote-block(body) = block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #text(font: "JetBrains Mono", size: 9.5pt, fill: rgb("#E2E8F0"))[#body]
]

#let prompt-block(body) = block(
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
  #place(top + left, rect(width: 7pt, height: 100%, fill: gradient.linear(rgb("#F59E0B"), rgb("#92400E"), angle: 180deg)))
  #place(top + right, dx: 10pt, dy: 60pt,
    text(font: "Cormorant Garamond", size: 220pt, weight: "bold", fill: rgb("#0D1520"))[AI]
  )
  #place(top + left, dx: 2.4cm, dy: 0cm)[
    #v(4.2cm)
    #text(size: 9pt, fill: accent, weight: "bold", tracking: 3pt)[#upper[A Practical Playbook]]
    #v(0.7cm)
    #text(size: 46pt, weight: "bold", fill: white)[The AI#linebreak()Playbook#linebreak()for Indian#linebreak()CA Firms]
    #v(1cm)
    #rect(width: 5.5cm, height: 2pt, fill: gradient.linear(accent, rgb("#92400E")))
    #v(0.9cm)
    #text(size: 14pt, fill: rgb("#94A3B8"), style: "italic")[Stop spending your evenings on drafts.#linebreak()Here's how to rebuild your practice around AI.]
    #v(4.8cm)
    #text(size: 9pt, fill: rgb("#475569"), tracking: 1pt)[#upper[2026 Edition]]
    #v(0.4cm)
    #rect(fill: accent, radius: 3pt)[
      #pad(x: 10pt, y: 5pt)[
        #text(size: 8pt, weight: "bold", fill: dark, tracking: 1pt)[#upper[Includes 50-Prompt Library]]
      ]
    ]
  ]
]

// ── TABLE OF CONTENTS ─────────────────────────────────────────────────────────
#page(margin: (top: 2.8cm, bottom: 2.8cm, left: 2.8cm, right: 2.8cm))[
  #text(size: 9pt, fill: accent, weight: "bold", tracking: 3pt)[#upper[Contents]]
  #v(0.5cm)
  #rect(width: 2cm, height: 2pt, fill: accent)
  #v(1.4cm)

  #let ch(num, title, sub, pg) = {
    grid(columns: (0.8cm, 1fr, 1cm),
      text(size: 10pt, fill: accent, weight: "bold")[#num],
      stack(
        text(size: 14pt, weight: "bold", fill: dark)[#title],
        v(6pt),
        text(size: 10pt, fill: muted, style: "italic")[#sub]
      ),
      align(right, text(size: 11pt, fill: muted)[#pg])
    )
    v(0.2cm)
    line(length: 100%, stroke: 0.4pt + rule-col)
    v(0.5cm)
  }

  #grid(columns: (0.8cm, 1fr, 1cm),
    [],
    stack(
      text(size: 14pt, weight: "bold", fill: dark)[Why This Exists],
      v(6pt),
      text(size: 10pt, fill: muted, style: "italic")[The evening that started it all]
    ),
    align(right, text(size: 11pt, fill: muted)[3])
  )
  #v(0.2cm)
  #line(length: 100%, stroke: 0.4pt + rule-col)
  #v(0.5cm)

  #ch("01", "The Two Tools You Actually Need", "ChatGPT, Claude, and when to use which", "5")
  #ch("02", "Stop Starting From Scratch", "Persistent context, memory, and your firm profile", "9")
  #ch("03", "Your Filing Season Survival Kit", "The highest-ROI use cases for practicing CAs", "13")
  #ch("04", "Client Communication That Doesn't Sound Like a Robot", "Getting AI to write in your voice", "17")
  #ch("05", "Connecting AI to Your Work", "Tally, Zoho, Excel — without IT support", "21")
  #ch("06", "Building Reusable Skills", "Custom GPTs and Claude Skills for your firm", "25")
  #ch("07", "Getting Your Team On Board", "Articles, partners, and the right expectations", "29")
  #ch("08", "What This Looks Like in 6 Months", "The honest picture", "33")

  #v(0.5cm)
  #text(size: 9pt, fill: muted, tracking: 2pt)[#upper[Appendices]]
  #v(0.5cm)

  #let app(label, title, pg) = {
    grid(columns: (1.8cm, 1fr, 1cm),
      text(size: 9pt, fill: accent, weight: "bold", tracking: 1pt)[#upper[#label]],
      text(size: 14pt, weight: "bold", fill: dark)[#title],
      align(right, text(size: 11pt, fill: muted)[#pg])
    )
    v(0.2cm)
    line(length: 100%, stroke: 0.4pt + rule-col)
    v(0.5cm)
  }

  #app("App. 1", "Your First Week", "")
  #app("App. 2", "5 Full Skills + 15 Ideas", "")
  #app("App. 3", "50 Prompts", "")
]

// ── CONTENT ──
= Why This Exists

It's 11 PM on a Tuesday in March. My uncle — a practicing CA with his own firm in Pune, our family's CA, been working with us for over two decades — is hunched over his laptop, manually formatting a reply to a client who wants to know why his tax outgo increased this year. He's rewriting the same explanation he's written a dozen times before, adjusting the numbers, making sure the tone is right. The client is a retired colonel who gets offended easily. He'll spend twenty minutes on this email.

I asked him if he'd tried using ChatGPT or Claude to draft it. He'd used ChatGPT a few times — mostly for quick questions, getting a summary of a circular, that sort of thing. Useful, but limited. He hadn't found a way to make it part of how he actually works.

That's the gap this book addresses. It's not that CAs aren't aware of AI. Some are genuinely at the forefront — using it for research, quick Q&A, even exploring automation for parts of their workflow. But for most practicing CAs, there's a wide distance between "I've tried ChatGPT" and "AI saves me two hours every day." The gap isn't awareness. It's systematic integration — finding workflows that actually stick in your daily practice and compound over time.

I'm not a Chartered Accountant. I work in technology, and I watched someone I care about spend his evenings on work that AI could handle in minutes — drafting client emails, formatting reports, explaining the same regulatory changes to fifteen different clients. Not the judgment calls. Not the advisory work that earns real fees. The repetitive, mechanical parts that eat your time and energy.

So I built a system. I sat with him, understood his workflows, and figured out where AI could slot in without changing how he works — just making the tedious parts faster. Within two weeks, he had cut his administrative time roughly in half. Not by becoming a programmer or learning complex tools. By using two AI applications he could access from his phone.

This book is what I built for him, packaged for you. Every example is drawn from real CA workflows — GST filings, ITR preparation, client communication, ICAI compliance. Every tool recommendation has been tested. Nothing here requires you to write code, install servers, or spend money upfront. If you can type in WhatsApp, you can use everything in this book.

The goal is simple: take the 3–4 hours of mechanical admin work you do every day and compress it into 30 minutes. The remaining time is yours — for advisory work that actually earns fees, for the clients who need your judgment, or for getting home before your dinner goes cold.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== How to Read This Book

Read this opening and Chapter 1 first — they give you the foundation. After that, jump to whatever chapter matches your most pressing problem. Each chapter stands alone.

Filing season approaching and you're drowning? Go straight to Chapter 3. Client emails are your bottleneck? Chapter 4. Want to connect AI to Tally or Zoho? Chapter 5. Need to get your team using this? Chapter 7.

The appendices are reference material. Appendix 2 has ready-made skills you can start using immediately. Appendix 3 has 50 prompts you can copy-paste right away. Dip into them when you need a specific prompt or workflow — don't try to read them cover to cover.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 1: The Two Tools You Actually Need

You don't need ten AI tools. You need two. Maybe one. The AI landscape is noisy — every week there's a new app promising to revolutionise your workflow. Ignore all of it. For a practicing CA in India, two tools cover 95% of what you'll ever need: Claude and ChatGPT.

Both are available as web apps and mobile apps. Both have free tiers that are genuinely useful. Start there. Don't pay for anything until you've used the free version for at least two weeks.
== Claude — Your Back Office

Claude is made by Anthropic. It's less well-known outside the software engineering community, but it's arguably the more capable tool for the kind of work CAs do daily.

Think of Claude as your back office assistant. It excels at:

- *Drafting* — client emails, engagement letters, representation letters, compliance notices. Give it context about your firm's tone and it produces drafts that need minimal editing.
- *Data analysis* — upload a Tally export or a bank statement in Excel, and ask it to find discrepancies, summarise entries by category, or flag unusual transactions. Claude is meaningfully better at structured data tasks than any other AI tool available today.
- *Document review* — paste a contract or a notice from the IT department and ask it to summarise the key obligations, deadlines, and risks in plain language.
- *Operational workflows* — with features like Projects (persistent workspaces) and MCP connectors, Claude can handle recurring tasks like month-end reconciliation. Chapter 5 goes deeper on this.
Where Claude shines most: anything involving careful reasoning, long documents, and structured data. If you're uploading a 26AS and asking "show me which TDS entries don't match my books," Claude is your tool.
== ChatGPT — The Researcher

ChatGPT is made by OpenAI. It's the tool most people have heard of, and it has the broadest ecosystem — plugins, integrations, a massive user community, and a plugin store full of specialised tools.

Both ChatGPT and Claude now have web search built in, so neither has a monopoly on real-time information. But ChatGPT's ecosystem gives it an edge for research-heavy tasks:

- *Research* — "What's the latest CBDT circular on angel tax?" "Has there been any tribunal ruling on this Section 68 issue in the last six months?" ChatGPT is fast at pulling together information from multiple sources and giving you a synthesis.
- *Quick Q&A* — "What's the due date for GSTR-9 this year?" "Can a partnership firm claim Section 80G deduction?" For rapid factual lookups, ChatGPT feels snappier.
- *Client-facing explanations* — ask it to explain a complex tax concept "as if explaining to a small business owner who doesn't know accounting." It's excellent at adjusting complexity levels.

== Which One Should You Pick?

For data tasks — uploading Excel files, analysing Tally exports, reconciliation work — use Claude. It's not a close contest.

For research and quick factual lookups, ChatGPT has a slight edge thanks to its ecosystem and integrations.

For drafting, both are excellent. You'll develop a preference after a week of use.

If you're not sure where to start, pick either one — both are capable enough for everything in this book. Start with whichever you open first. The best tool is the one you actually use.
#callout(emoji: "💡")[Both Claude and ChatGPT have free tiers. Start there. The paid versions (₹1,700–2,000/month) add speed and capacity, but you don't need them on day one. Use the free tier for two weeks, decide which tool fits your workflow, then upgrade only if you're hitting limits.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 2: Stop Starting From Scratch

Every time you open ChatGPT or Claude and type a prompt, you're starting from zero. The AI doesn't know your firm's name, your tone preferences, your client base, or that you always sign off emails with "Warm regards." You end up repeating the same context every single time.

This chapter fixes that. Both tools now offer ways to give the AI persistent context about you and your work — so every conversation starts with your firm's knowledge already loaded.
== Two Features, Different Jobs

Both Claude and ChatGPT have two separate features that reduce repetition. They do different things:

*Memory* is what the AI remembers about you over time. Both tools learn from your conversations — your name, your preferences, recurring topics. ChatGPT's memory is automatic (it picks things up as you chat). Claude's memory works similarly. Over time, the AI gets better at anticipating what you need.

*Projects* are what you explicitly load for a specific workspace. This is where you upload your firm's profile, standard templates, tone guides, and reference documents. Think of Projects as a dedicated desk drawer for a specific type of work.

Both ChatGPT and Claude offer Projects. The setup is nearly identical on both platforms: create a project, add instructions, upload reference files and start using.
#callout(emoji: "💡")[On Claude's Team plan (and ChatGPT's equivalent), you can share a Project across your entire firm — same reference files, same context, same memory, available to every team member. Team plans are paid, but if your firm has 3+ people using AI daily, the shared context alone justifies the cost.]
== Setting Up Your Firm's AI Workspace

Here's what to do on either platform:

- Create a Project called "[Your Firm Name] — General"
- Add your firm profile as the project instructions (see the example below)
- Upload key reference documents — your standard engagement letter template, your letterhead format, any compliance checklists you reuse
- Start every work conversation inside this Project
Now every response the AI generates already knows your firm, your tone, and your standards.
== Example: Complete Firm Profile (Copy This)

Copy the text below into your Project instructions on either ChatGPT or Claude. Edit the details to match your firm.
#quote-block[FIRM PROFILE — S.K. Mehta & Associates

Firm name: S.K. Mehta & Associates, Chartered Accountants
FRN: 012345N
Head office: 204, Commerce House, Connaught Place, New Delhi – 110001

Partners:
• CA Suresh K. Mehta (Senior Partner) — specialises in direct tax and corporate advisory
• CA Priya Mehta — specialises in GST, indirect tax, and startup compliance

Team size: 7 (2 partners, 3 article clerks, 1 admin, 1 accountant)

Primary services: Tax filing (ITR, GST), audit, company incorporation, startup advisory, NRI taxation

Client base: ~180 clients — mix of salaried individuals, small businesses, HUFs, and 12 startups

Tone guide: Formal but warm. No jargon unless writing to another professional. Always respectful. Address clients as "Dear Mr./Ms. [Surname]" unless they've asked for first-name basis.

Standard email sign-off:
Warm regards,
S.K. Mehta & Associates
Chartered Accountants
Phone: +91-11-XXXX-XXXX

Standard disclaimer: "This communication is intended solely for the addressee. The information provided is based on facts and documents shared with us and applicable laws as on date. Please consult us before acting on any advice contained herein."

Common filing types: ITR-1, ITR-2, ITR-3, ITR-4, GSTR-1, GSTR-3B, GSTR-9, TDS returns, ROC filings

Key preferences:
• Use ₹ symbol, Indian number formatting (lakhs/crores)
• Financial year format: FY 2025–26 (AY 2026–27)
• Reference sections of the Income Tax Act, 1961 and CGST Act, 2017 when relevant
• Flag if a deadline is within 7 days]

That's it. Paste this into your Project, edit for your firm, and every conversation inside that Project will produce output that sounds like it came from your office — not from a generic AI.

Once you're comfortable with Projects, Chapter 6 shows you how to build reusable Skills and Custom GPTs for tasks you repeat often.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 3: Your Filing Season Survival Kit

Filing season is when every CA firm goes from manageable to manic. July hits and suddenly you're processing hundreds of ITRs while fielding panicked client calls about missing Form 16s. This chapter gives you prompt patterns that cut the repetitive work in half.
== The ITR Prep Workflow

Instead of manually comparing a client's Form 16, 26AS, AIS, and bank statements, give them to the AI:
#quote-block[I'm preparing ITR-2 for a salaried individual. Here's their Form 16 [uploaded], 26AS [uploaded], and AIS [uploaded].

Compare all three. Flag any discrepancies in TDS credits, interest income, or other income.

List them in a table with the source, amount per document, and the difference.]

What would take you 25 minutes of cross-referencing takes the AI about 30 seconds. You still verify the output — but verification is faster than creation.
== GST Reconciliation

Monthly GSTR-2B vs purchase register reconciliation is tedious and error-prone. Export both as Excel files and upload them:
#quote-block[Here's my client's GSTR-2B for March 2026 [uploaded] and their purchase register from Tally [uploaded].

Reconcile them. Show me:
(1) invoices in 2B but not in books
(2) invoices in books but not in 2B
(3) amount mismatches

Format as a table with supplier GSTIN, invoice number, 2B amount, books amount, and difference.]

This alone saves hours during GST filing. The AI catches mismatches you'd miss at 10 PM after your eighth reconciliation of the day.
== Client Data Collection

Every year you chase clients for the same documents. Instead of drafting individual emails:
#quote-block[Draft a polite but firm email to a client asking them to share documents for ITR filing.

They're a salaried individual with rental income and mutual fund investments.

I need: Form 16, bank statements (all accounts), capital gains statement from each mutual fund house, rental agreement, and municipal tax receipts.

Mention that the filing deadline is July 31 and we need documents by July 10 to ensure timely filing.

Tone: firm but warm — this client always delays.]
== Quick Tax Computations

When a client calls asking "should I go with the old regime or new regime?" you can get a quick comparison:
#quote-block[Compare old vs new tax regime for AY 2026-27.

Gross salary: ₹18,50,000
HRA: ₹3,60,000 (rent paid: ₹2,40,000, Delhi)
Section 80C investments: ₹1,50,000
NPS contribution by employer: ₹50,000
Section 80D premium: ₹25,000
Home loan interest: ₹1,80,000

Show the tax computation under both regimes side by side.]

You still apply your judgment on which regime to recommend — the AI just does the arithmetic so you can focus on the advice.
== A Note on Confidentiality
#callout(emoji: "🔒")[Don't paste Aadhaar numbers, PANs, or bank account details into any AI tool. Use placeholder values or anonymise the data before uploading. Replace "ABCDE1234F" with "XXXXX0000X" and real account numbers with dummy ones. The AI doesn't need real PII to do the analysis — it needs the structure and the numbers. That's enough.]
#callout(emoji: "💡")[If the output isn't right, don't start over — tell the AI what to fix. Drafting is a conversation, not a one-shot.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 4: Client Communication That Doesn't Sound Like a Robot

The biggest fear CAs have about using AI for client communication: "It'll sound like a machine wrote it." Fair concern. Default AI output does sound generic — formal, verbose, and slightly American. The fix isn't to avoid AI for communication. It's to train it to write like you.
== Teaching AI Your Voice

If you set up your Project correctly (Chapter 2), the AI already knows your tone. But for client communication specifically, you want to go further. Give it examples of emails you've actually sent. Paste three or four emails you're proud of — ones that struck the right tone — and tell it:
#quote-block[Here are 4 emails I've sent to clients.

Study my tone, sentence length, level of formality, and how I structure explanations.

From now on, match this style when I ask you to draft client communication.]

Do this once in a Project, and every draft it produces will sound like it came from your desk.
== Common Client Communication Scenarios

Explaining a tax increase:
#quote-block[Draft an email to Mr. Rajesh Sharma explaining why his tax liability increased this year compared to last year.

Key reasons: he withdrew from NPS (taxable), switched to new regime without realising he'd lose HRA benefit, and had short-term capital gains from equity.

Tone: reassuring but factual. He's a senior person who expects clear explanations without jargon.]

Deadline reminder:
#quote-block[Draft a WhatsApp message to a client who hasn't submitted documents for GST annual return.

This is the third reminder. Deadline is December 31.

Mention the late fee (₹200/day under CGST + SGST). Keep it under 5 lines.

Polite but make the urgency clear.]

Responding to an IT notice:
#quote-block[A client received a notice under Section 143(1)(a) for AY 2024-25 showing a demand of ₹12,400 due to a mismatch in TDS claimed vs 26AS.

Draft a reply to the CPC. The mismatch is because the employer deposited TDS late and it reflected in the next quarter's 26AS.

Include the relevant facts and request the demand be rectified.]
== The WhatsApp Factor

Let's be honest: most client communication in Indian CA firms happens on WhatsApp, not email. The AI is equally good at drafting WhatsApp messages — you just need to specify the format:
#quote-block[Draft this as a WhatsApp message.

Keep it under 4-5 lines. No subject line, no formal salutation — just start with "Hi [Name]" and get to the point.]

You'd be surprised how good the output is when you specify the medium. The AI adjusts formality, length, and structure automatically.
== One Update, Multiple Clients

When a regulatory change drops — a new CBDT circular, a GST rate revision, a deadline extension — you need to communicate the same update to very different types of clients. An HNI investor needs different detail and tone than a salaried employee or a small business owner. Instead of writing each version separately:
#quote-block[The due date for filing ITR for non-audit cases has been extended to August 31, 2026.

Draft three versions of this update:
(1) a formal email for corporate clients and HNIs — include implications and any action required
(2) a WhatsApp message for salaried individual clients — simple, friendly, just the key facts
(3) a brief message I can post in my CA firm's client WhatsApp broadcast list — punchy, informative, no jargon

Include what the old deadline was, the new deadline, and what clients need to do (if anything).]

Three formats, one prompt, thirty seconds. That's the kind of leverage AI gives you.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 5: Connecting AI to Your Work

So far, everything in this book has been copy-paste: you take data out of your tools, give it to the AI, and get output. This chapter is about making that connection smoother — getting data from Tally, Zoho, Excel, and other tools into AI more efficiently.
== Tally and Zoho: Your Data Sources

Most Indian CA firms live in Tally or Zoho (Books, Invoice, CRM). Both can export data in formats that AI tools understand — Excel, CSV, or PDF. The simplest workflow:

- Export the report from Tally or Zoho as an Excel file (.xlsx)
- Upload the file directly to Claude or ChatGPT using the attachment/upload button
- Ask your question
That's it. Don't copy-paste data from spreadsheets into the chat — upload the file. Both Claude and ChatGPT accept file uploads now (Excel, CSV, PDF, images). Uploading preserves the structure, column headers, and formatting that copy-pasting destroys.
== Zoho MCP: Connecting Directly to Claude

If your firm uses Zoho, there's an even smoother option. Zoho now supports MCP (Model Context Protocol) — a standard that lets AI tools like Claude connect directly to your Zoho data without manual exports.

*What this means in practice:* instead of exporting a report from Zoho Books, downloading the file, and uploading it to Claude — you can ask Claude to pull the data directly. "Show me outstanding invoices from Zoho Books for this month" just works.
=== Setting Up Zoho MCP with Claude

Getting started takes about 5 minutes:

+ Open Claude and go to your Settings → Integrations (or MCP Connections)
+ Visit Zoho's developer portal at https://www.zoho.com/mcp/
+ Generate an API key or OAuth token from Zoho for the MCP connection
+ In Claude, add a new MCP server connection and paste the Zoho connection URL and credentials
+ Authorize Claude to access your Zoho workspace — you'll select which Zoho apps (Books, Invoice, CRM) Claude can read
Once connected, you can ask Claude questions that pull live data from Zoho without any manual exports.
=== What About ChatGPT?

ChatGPT doesn't natively support MCP connections yet. For Zoho integration with ChatGPT, your best options are:

- *Zapier integration* — connect Zoho to ChatGPT via Zapier, which can pull data from Zoho and format it for ChatGPT. This requires a Zapier account (free tier available).
- *Manual export* — the export-upload workflow described above works perfectly well and keeps you in full control of what data reaches the AI.

#callout(emoji: "💡")[MCP is still relatively new. If you hit setup issues, Zoho's developer documentation at https://www.zoho.com/mcp/ has setup guides and troubleshooting documentation.]
== Practical Examples

Trial balance analysis:
#quote-block[Here's the trial balance exported from Tally for FY 2025-26 [uploaded].

Flag any accounts with unusual balances — specifically: negative balances in asset accounts, credit balances in expense accounts, and any account where the closing balance changed by more than 50% compared to the opening balance.]

Zoho invoice reconciliation:
#quote-block[Here's the sales register from Zoho Books [uploaded] and the GSTR-1 filed for Q3 [uploaded].

Compare them and show me: invoices in Zoho not reported in GSTR-1, invoices in GSTR-1 not in Zoho, and any amount or rate mismatches.

Summarise the total impact.]

Bank statement analysis:
#quote-block[Here's a client's SBI savings account statement for April 2025 to March 2026 [uploaded PDF].

Categorise every transaction as: salary, rent, UPI transfer, investment, EMI, cash withdrawal, or other.

Show monthly totals by category. Flag any cash deposits over ₹50,000.]
== Projects vs File Uploads — They're Different Things

An important distinction:

*Projects* (in both Claude and ChatGPT) are persistent workspaces. Files you add to a Project stay there across conversations. This is where you put your firm profile, standard templates, and reference documents that you need in every conversation.

*File uploads* are for a specific conversation. When you upload a Tally export or a bank statement, it's available only in that chat. Once you close the conversation, the file isn't carried forward.

*Use Projects for:* firm profile, templates, compliance checklists, engagement letter formats — anything you reuse across clients.

*Use file uploads for:* client-specific data you're analysing in the moment — bank statements, Tally exports, tax returns, notices.
== Keeping Data Safe
#callout(emoji: "🔒")[Don't paste Aadhaar numbers, PANs, or bank account details into any AI tool. Replace them with placeholders before uploading. Use XXXXX0000X instead of real PANs, and mask account numbers. The AI needs the structure and the numbers for analysis — it doesn't need the personally identifiable information. That's enough to stay safe.]
== What About Automation Tools?

Tools like Zapier and Make.com exist for connecting apps together automatically. They're not needed for anything in this book. The manual workflow — export, upload, ask — takes under a minute and keeps you in control. Automation is a layer you can add later if you want, but it's not where the value is for most firms.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 6: Building Reusable Skills

A skill is a saved, repeatable workflow for a specific domain task. Instead of writing a new prompt from scratch every time you need to reconcile GSTR-2B, draft a Section 148 response, or prepare an ITR summary email — you use a proven template that already knows the format, the tone, and the steps.

If you've been following this book and find yourself copying the same prompt structure repeatedly, it's time to turn that prompt into a skill.
== What a Skill Looks Like

A skill has three parts:

- *Instructions* — what the AI should do, step by step. 'When I upload a GSTR-2B and a purchase register, compare them and produce a reconciliation table with these specific columns...'
- *Format* — how the output should look. Table? Bullet points? Draft email? Specify it once.
- *Context* — any standing knowledge the skill needs. 'Use Indian number formatting. Flag mismatches over ₹1,000. Assume financial year is April to March.'

== Where Skills Live

Skills aren't documents you store in Google Drive or print on a cheat sheet. They live natively in the AI platform:
=== Creating a Custom GPT in ChatGPT

+ Go to chatgpt.com and log in
+ Click your profile icon (bottom-left)
+ Select "My GPTs"
+ Click "Create a GPT"
+ Fill in the details:
• *Name* — give it a clear, descriptive name (e.g., "GST 2B Reconciler")
• *Instructions* — paste your skill instructions here (what it should do, step by step, format requirements)
• *Conversation starters* — add 2-3 example prompts users can click to get started (e.g., "Reconcile these two files", "Show me mismatches over ₹1,000")
• *Knowledge files* — upload any reference documents the GPT should always have access to
+ Click Save — choose "Only me" or "Anyone with the link" for sharing
Next time you need that workflow, just open your Custom GPT and start chatting.
=== Creating a Skill in Claude

A Claude "Skill" is essentially a custom connector configured for a specific repeatable task. Here's how to create one:

+ Go to claude.ai and log in
+ Go to *Settings* → *Connectors* → *Customize*
+ Under *Connectors*, click *Add custom connector*
+ Name it clearly — e.g., "GST 2B Reconciler" or "ITR Summary Drafter"
+ Write your skill instructions in the connector's instructions field — this is where you define what the AI should do, the output format, and any standing context
+ Upload any reference files the skill needs (templates, checklists, rate tables)
+ Start a conversation to test it
Every time you invoke this connector in a conversation, Claude already has the instructions and reference files loaded. It behaves like a specialised tool — no re-explaining needed.
== Building Your First Skill

Here's a complete example — a GST reconciliation skill — shown in both formats:
=== Claude Format (Project Instructions)

Paste this into a Claude custom connector's instructions field:
#quote-block[When I upload two files — a GSTR-2B download (Excel/CSV) and a purchase register from Tally or Zoho (Excel/CSV) — do the following:

1. Match invoices by supplier GSTIN + invoice number
2. Produce three tables:
   - Invoices in 2B but not in purchase register
   - Invoices in purchase register but not in 2B
   - Matched invoices with amount differences \>₹100
3. Show totals for each category
4. Use Indian number formatting (₹, lakhs)
5. At the end, state the net ITC impact of the mismatches

Format: Tables. Keep it clean. No narrative unless I ask for explanation.

If data looks incomplete or columns don't match expected headers, ask me to clarify before proceeding.]
=== ChatGPT Custom GPT Format
#quote-block[*Name: *GST 2B Reconciler

*Instructions: *When I upload two files — a GSTR-2B download (Excel/CSV) and a purchase register from Tally or Zoho (Excel/CSV) — do the following:

1. Match invoices by supplier GSTIN + invoice number
2. Produce three tables:
   - Invoices in 2B but not in purchase register
   - Invoices in purchase register but not in 2B
   - Matched invoices with amount differences \>₹100
3. Show totals for each category
4. Use Indian number formatting (₹, lakhs)
5. At the end, state the net ITC impact of the mismatches

Format: Tables. Keep it clean. No narrative unless I ask for explanation. If data looks incomplete or columns don't match expected headers, ask me to clarify before proceeding.

*Conversation Starters: *
• Reconcile these two GST files
• Show me mismatches over ₹1,000
• What's the net ITC impact?

*Knowledge Files: *(Optional) Upload GST rate tables or common GSTIN lists if relevant to your practice]

Save this as a Custom GPT or Claude Project/Skill. Next time you need a 2B reconciliation, open it, upload the two files, and you're done in under a minute.
== The Easy Way to Create Skills
#callout(emoji: "💡")[Even easier — if you've had a good back-and-forth with Claude or ChatGPT on a task and the output was exactly what you needed, just ask:

'Turn this conversation into a reusable skill I can use next time. Extract the instructions, format requirements, and any context I provided.'

The AI will distil the conversation into a clean set of instructions you can save directly as a Custom GPT or Claude Project.]
== Sharing Skills Across Your Firm

Here's the honest picture on sharing:

- *ChatGPT Custom GPTs* can be shared via link — anyone with the link can use your Custom GPT. When you save a GPT, choose "Anyone with the link" and share the URL. Simple and friction-free.
- *Claude Projects/Skills* sharing requires a Team plan. On Claude's Team plan, Projects are visible to all team members. On individual or free plans, there's no built-in sharing mechanism — you'd need to copy the instructions text and send it to a colleague to paste into their own Project. It works, but it's manual.
If your firm has a Team plan on either platform, collaboration is seamless. On individual plans, ChatGPT has the edge on sharing thanks to Custom GPT links. The honest truth: team plans (roughly ₹1,700/month per person) make collaboration significantly easier. If your firm has 3+ people using AI regularly, the team plan pays for itself.

Appendix 2 has 5 detailed starter skills ready to copy-paste, plus 15 more ideas to build. Start there and customise to fit your practice.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 7: Getting Your Team On Board

You've been using AI for two weeks. You're faster, your drafts are better, and you haven't touched a GST reconciliation spreadsheet by hand in days. Now comes the hard part: getting the rest of your team to use it.
== The Rollout That Actually Works

Bring it up in your next team meeting. Not a special training session — just the regular meeting you already have. The entire rollout is three things:

*Three rules:*

- Never paste real PANs, Aadhaar numbers, or bank details into any AI tool. Use placeholders.
- Always verify the AI's output before sending to a client or filing. It's a drafting tool, not a filing tool.
- If the AI gives you something that looks wrong, don't trust it — flag it to a senior.
*One example:* Open Claude or ChatGPT in front of the team. Take a real task from the current week — a client email, a reconciliation, a notice response. Do it live. Show them the prompt, show them the output, show them the edit you'd make. Total time: 5 minutes.

That's the rollout. Three rules, one live example. No training manual, no certification, no multi-day workshop. People learn by watching and then doing.
== Common Objections (And How to Handle Them)

*"It'll make mistakes."* Yes, sometimes. So do article clerks. The difference is you can review an AI draft in 2 minutes instead of spending 20 minutes writing it yourself. The review step doesn't go away — the creation step gets faster.

*"What about confidentiality?"* Valid concern. The rule is simple: no real PII goes into the tool. Anonymise or use placeholders. Both Claude and ChatGPT have data handling policies that don't use your inputs for training (on paid plans). But the practical safeguard is simpler: just don't paste sensitive identifiers.

*"ICAI will have a problem with this."* ICAI hasn't issued specific guidance against using AI tools for drafting or analysis. The professional standards around due diligence and verification still apply — which is why we verify everything. The AI drafts; you sign. Nothing changes about professional responsibility.

*"My team is too old/not tech-savvy."* If they can use WhatsApp, they can use ChatGPT. The interface is literally a text box. Type a question, get an answer. The barrier is psychological, not technical. The live demo in the team meeting breaks that barrier.
== The Article Clerk Advantage

Your article clerks are your fastest path to adoption. They're younger, more comfortable with apps, and they do the most repetitive work. Give them access, point them to this book, and watch what happens. In most firms I've seen, article clerks become the AI power users within a week — and they start teaching the senior staff.

The key insight: don't position AI as replacing anyone's job. Position it as removing the worst parts of everyone's job. Nobody enjoys formatting GSTR reconciliation tables at 9 PM. Let the machine do that part.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Chapter 8: What This Looks Like in 6 Months

Let me paint a picture of what your practice looks like six months from now, if you follow this book.

It's filing season again. A client sends you their Form 16 and bank statements on WhatsApp at 3 PM. Your article clerk uploads them to Claude, runs the ITR prep skill, and has a complete comparison of Form 16 vs 26AS vs AIS ready in two minutes. Discrepancies are flagged. The draft computation is done. Your clerk reviews it, makes two corrections, and moves to the next client.

Meanwhile, you're drafting a response to a Section 148 notice. You paste the notice text (redacted) into your 'Notice Response' Custom GPT. It produces a structured reply citing the relevant case law and provisions. You review it, adjust the arguments based on your knowledge of this specific client's situation, and it's ready to send. Total time: 15 minutes instead of an hour.

Your monthly GST reconciliations run through your 'GST 2B Reconciler' skill. Export from Tally, upload two files, get the mismatch report. What used to take half a day per client now takes 10 minutes.

Client communication is faster. The retired colonel who gets offended easily? You have a Project with notes about his preferences, and the AI drafts emails in exactly the right tone. The startup founder who wants everything on WhatsApp in bullet points? Same thing, different format, same AI.
== The Numbers

Based on what I've seen in practice:

- Administrative and drafting time: reduced by 40–60%
- Client response time: from hours to minutes for routine queries
- Filing errors from manual reconciliation: noticeably fewer
- Cost: ₹0 to ₹2,000/month per person (free tier to paid)

== What Doesn't Change

Your professional judgment. Your client relationships. Your understanding of a client's business that no AI can replicate. Your signature on the return. The advisory work — the part that makes this profession meaningful — stays entirely human.

What changes is that you actually have time for that work now. Instead of spending your evenings on reconciliations and email drafts, you spend them on the advisory, planning, and client conversations that grow your practice and your fees.

The firms that figure this out in 2026 will have a meaningful advantage. Not because AI replaces what CAs do — but because it removes the friction that prevents CAs from doing their best work.

Start today. Pick one task from this book. Try it. See what happens.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== A Note on AI Accuracy

AI tools make mistakes. They hallucinate case law that doesn't exist, miscalculate occasionally, and sometimes produce confidently wrong answers. This is not a reason to avoid them — it's a reason to use them correctly.

The workflow is always: AI drafts, you verify. The AI is your articled clerk, not your partner. It does the first pass — fast, competent, occasionally wrong. You do the review — slower, expert, catching what the machine missed. Together, you're faster and more accurate than either alone.

Specific areas where AI commonly makes errors in Indian tax context:

- *Section numbers* — it might cite Section 80CCD(2) when it means 80CCD(1B). Always verify section references.
- *Due dates* — AI training data has a cutoff. For current deadlines, always verify against the official CBDT/GST portal notifications.
- *Case law* — AI can fabricate tribunal and High Court citations. If you're using a case reference in a submission, verify it exists on the relevant legal database.
- *Rate changes* — GST rates, surcharge thresholds, and cess amounts change frequently. Cross-check with official notifications.
None of these are deal-breakers. You'd verify these things anyway if an article clerk drafted them. The difference is the AI draft arrives in 30 seconds instead of 30 minutes.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Appendix 1: Your First Week — Day by Day

If you've read this far and haven't tried anything yet, here's a structured plan for your first five days. Each task takes under 15 minutes.
=== Day 1: Set Up Your Workspace

Open Claude (claude.ai) or ChatGPT (chatgpt.com) — whichever you prefer. Create a free account if you haven't. On Claude, go to Settings → Connectors → Customize → Add custom connector and create one called '[Your Firm Name] — General.' On ChatGPT, go to Projects and create one. Copy the firm profile template from Chapter 2, edit it with your details, and paste it into the instructions. This takes 10 minutes and immediately makes every conversation more useful.
=== Day 2: Draft Your First Email

Think of a client email you need to send today. Instead of writing it from scratch, open your Project and describe what you need: the client's situation, what you want to communicate, and the tone. Review the AI's draft. Edit what needs editing. Send it. Track how long this took versus your usual process. Most people save 10-15 minutes on their very first email.
=== Day 3: Try a Reconciliation

Export a GSTR-2B and purchase register for any client — preferably one you were going to reconcile anyway. Upload both files to Claude and use the reconciliation prompt from Chapter 3. Compare the AI's output to what you would have found manually. In most cases, it catches the same mismatches you would, plus a few you might have missed at 10 PM.
=== Day 4: Explain a Circular

Take the most recent CBDT circular or GST notification. Paste it into the AI and ask: 'Explain what this means for a small business owner in plain Hindi-English. Then draft a WhatsApp message I can send to affected clients.' The output will be surprisingly good. Edit the WhatsApp message to match your voice and send it to one client. Watch the reply — clients appreciate proactive updates.
=== Day 5: Build Your First Skill or Custom GPT

Look back at the prompts you used this week. Which one would you use again? Take that prompt and turn it into a reusable tool — a Custom GPT on ChatGPT or a Project/Skill on Claude (Chapter 6 has step-by-step instructions for both). Give it a clear name and save it. You now have a reusable workflow that any team member can access. That's the foundation of your AI-powered practice.
#callout(emoji: "🎯")[By the end of five days, you'll have: a personalised AI workspace, at least one reusable skill or Custom GPT, first-hand experience with AI-drafted communication, and a clear sense of where AI saves you time — and where it doesn't. The total investment: zero rupees and about an hour of experimentation spread across a week.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
= Appendix 2: Starter Skills for CA Firms

Below are 5 fully detailed skills in proper format. Each includes the Claude Skill (SKILL.md format for Claude Projects) and the Custom GPT equivalent (for ChatGPT). Copy-paste directly into your platform of choice.

#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

== Skill 1: GST 2B Reconciler

_Reconcile a client's GSTR-2B with their purchase register. Use monthly or quarterly._

=== Claude Skill (SKILL.md)

#block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #set text(font: "JetBrains Mono", size: 9pt, fill: rgb("#E2E8F0"))
  #set par(leading: 0.55em, justify: false)
  --- \
  name: gst-2b-reconciler \
  description: Reconciles GSTR-2B with purchase register from Tally or Zoho. Use when you need to match invoices, find mismatches, and calculate ITC at risk for a client. \
  --- \
  #v(0.3em)
  \# GST 2B Reconciler \
  #v(0.3em)
  \#\# Overview \
  Reconcile a client's GSTR-2B download against their purchase register. Produces mismatch tables and ITC risk summary. \
  #v(0.3em)
  \#\# Workflow \
  #v(0.3em)
  \#\#\# Step 1: Receive Files \
  User uploads two files: \
  - GSTR-2B download (Excel or CSV) \
  - Purchase register from Tally or Zoho (Excel or CSV) \
  #v(0.3em)
  \#\#\# Step 2: Match Invoices \
  - Identify GSTIN column and invoice number column in both files \
  - If column headers don't match expected names, ask the user to clarify \
  - Match invoices by supplier GSTIN + invoice number \
  #v(0.3em)
  \#\#\# Step 3: Produce Output \
  Generate three tables: \
  #v(0.3em)
  Table A: Invoices in GSTR-2B but NOT in purchase register \
  (potential missed bookings) \
  #v(0.3em)
  Table B: Invoices in purchase register but NOT in GSTR-2B \
  (ITC at risk — supplier hasn't filed) \
  #v(0.3em)
  Table C: Matched invoices where taxable value or tax amount differs by more than ₹100 \
  #v(0.3em)
  For each table show: Supplier GSTIN, Supplier Name (if available), Invoice Number, Invoice Date, 2B Amount, Books Amount, Difference. \
  #v(0.3em)
  \#\#\# Step 4: Summary \
  - Total count and value for each category \
  - Net ITC impact (how much ITC is at risk) \
  - One-line recommendation (e.g., \"Follow up with 3 suppliers for missing invoices\") \
  #v(0.3em)
  \#\# Output Format \
  Tables only. No narrative unless asked. Use Indian number formatting (₹, lakhs for amounts over ₹1,00,000). Round to nearest rupee. \
]

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

#block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #set text(font: "JetBrains Mono", size: 9pt, fill: rgb("#E2E8F0"))
  #set par(leading: 0.55em, justify: false)
  --- \
  name: it-notice-responder \
  description: Drafts formal responses to Income Tax demand notices for Indian taxpayers. Use when a client receives a 143(1), 148, or 245 notice and needs a professional reply to the Assessing Officer. \
  --- \
  #v(0.3em)
  \# IT Demand Notice Responder \
  #v(0.3em)
  \#\# Overview \
  Draft professional reply letters to Income Tax demand notices. Produces formal correspondence ready for review and filing. \
  #v(0.3em)
  \#\# Workflow \
  #v(0.3em)
  \#\#\# Step 1: Collect Details \
  Ask the user for (if not already provided): \
  - Client name and PAN \
  - Assessment Year \
  - Notice type (143(1) intimation / 148 reassessment / 245 adjustment) \
  - Demand amount \
  - Reason for demand as per notice \
  - Client's position / reason to contest \
  #v(0.3em)
  \#\#\# Step 2: Draft Reply \
  Structure the letter as: \
  - Subject line with section reference, AY, and PAN \
  - Addressed to: The Assessing Officer, Ward/Circle, City \
  - Opening: reference notice date and demand amount \
  - Numbered points covering: \
    1. Nature of demand (what the department claims) \
    2. Our position (factual, with supporting references) \
    3. Relief sought (demand be dropped/reduced, request for hearing) \
  - Enclosures list (Form 26AS, TDS certificates, ITR acknowledgement, etc.) \
  - Sign-off block: CA Name, FCA/ACA, Firm Name, Membership No. \
  #v(0.3em)
  \#\# Output Format \
  Formal letter format. Professional, factual, firm tone. No aggression. Numbered points. Ready to print on letterhead. \
]

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

#block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #set text(font: "JetBrains Mono", size: 9pt, fill: rgb("#E2E8F0"))
  #set par(leading: 0.55em, justify: false)
  --- \
  name: client-email-tone-matcher \
  description: Drafts client emails matching the CA's personal communication style. Use when writing advisory emails, fee discussions, bad news delivery, or routine updates. Requires 3 sample emails from the CA during setup. \
  --- \
  #v(0.3em)
  \# Client Email Tone-Matcher \
  #v(0.3em)
  \#\# Setup (one time) \
  Before first use, the CA should paste 3 real emails they've sent to clients into the Project's reference files. Label them: \
  - Sample 1: advisory/informational email \
  - Sample 2: fee or payment-related email \
  - Sample 3: bad news or difficult conversation email \
  #v(0.3em)
  The skill uses these to match the CA's natural voice. \
  #v(0.3em)
  \#\# Workflow \
  #v(0.3em)
  \#\#\# Step 1: Understand Context \
  Ask the user for: \
  - Client name and relationship (long-standing / new / sensitive) \
  - Purpose of email (advisory / reminder / bad news / update / follow-up) \
  - Key points to cover (2-3 bullet points) \
  - Tone preference if different from default (warmer / more formal / firmer) \
  #v(0.3em)
  \#\#\# Step 2: Draft \
  - Match the CA's natural writing style from the samples \
  - Use the client's name naturally \
  - Keep paragraphs short (3-4 sentences max) \
  - End with a clear action item or next step \
  - Include standard sign-off from firm profile \
  #v(0.3em)
  \#\# Output Format \
  Email format: subject line + body. Ready to paste into email client. No placeholders — use the actual names and details provided. \
]

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

#block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #set text(font: "JetBrains Mono", size: 9pt, fill: rgb("#E2E8F0"))
  #set par(leading: 0.55em, justify: false)
  --- \
  name: itr-checklist-reviewer \
  description: Reviews ITR computations and supporting documents for completeness before filing. Flags missing items, common errors, and positions that may attract scrutiny. Use before submitting any individual or business ITR. \
  --- \
  #v(0.3em)
  \# ITR Checklist Reviewer \
  #v(0.3em)
  \#\# Overview \
  Pre-filing quality check for ITR computations. Catches common errors and missing items before submission. \
  #v(0.3em)
  \#\# Workflow \
  #v(0.3em)
  \#\#\# Step 1: Receive Information \
  User provides: \
  - ITR form type (ITR-1 / ITR-2 / ITR-3 / ITR-4) \
  - Assessment Year \
  - Income heads (salary, business, capital gains, house property, other) \
  - Key figures: total income, tax payable, TDS claimed, advance tax, refund (if any) \
  - Any unusual items or positions taken \
  #v(0.3em)
  \#\#\# Step 2: Review \
  Check against a standard checklist: \
  - All income heads accounted for (cross-check with Form 26AS/AIS) \
  - TDS credit matches 26AS \
  - Advance tax challan details included \
  - Section 80 deductions have supporting proof \
  - Capital gains: holding period, indexation, reinvestment claims verified \
  - House property: rental income or deemed rental computed correctly \
  - Bank interest from all accounts included (including dormant accounts) \
  - Foreign assets / foreign income disclosure (if applicable) \
  #v(0.3em)
  \#\#\# Step 3: Flag Issues \
  For each issue found: \
  - What's missing or wrong \
  - Why it matters (penalty risk, scrutiny risk, or just good practice) \
  - Suggested fix \
  #v(0.3em)
  \#\# Output Format \
  Numbered checklist. Green checkmark for items that pass. Red flag for items that need attention. Summary at top: \"X items reviewed, Y need attention.\" \
]

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

#block(
  width: 100%,
  fill: rgb("#1E293B"),
  radius: 5pt,
  inset: (x: 18pt, y: 14pt),
)[
  #set text(font: "JetBrains Mono", size: 9pt, fill: rgb("#E2E8F0"))
  #set par(leading: 0.55em, justify: false)
  --- \
  name: engagement-letter-generator \
  description: Generates professional CA engagement letters for new clients. Covers scope, exclusions, fees, client responsibilities, and confidentiality. Use when onboarding any new client or renewing an existing engagement. \
  --- \
  #v(0.3em)
  \# Engagement Letter Generator \
  #v(0.3em)
  \#\# Setup (one time) \
  Add to the Project's reference files: \
  - Your firm's standard letterhead details (name, address, registration numbers) \
  - Your firm's standard terms (payment terms, dispute resolution clause) \
  - Your standard confidentiality language \
  #v(0.3em)
  \#\# Workflow \
  #v(0.3em)
  \#\#\# Step 1: Collect Details \
  Ask the user for: \
  - Client name (individual or company) \
  - Type of engagement (GST compliance / ITR filing / statutory audit / full accounting + tax / internal audit / advisory) \
  - Specific deliverables \
  - Fee: amount per period + GST \
  - Billing cycle (monthly advance / quarterly / on completion) \
  - Start date \
  #v(0.3em)
  \#\#\# Step 2: Generate Letter \
  Include: \
  - Scope of services (specific, not vague) \
  - What is NOT included (be explicit — e.g., \"TDS compliance is not covered under this engagement\") \
  - Client responsibilities (document sharing timelines, information accuracy, access to records) \
  - Fee and payment terms \
  - Confidentiality clause \
  - Dispute resolution (arbitration in [City]) \
  - Termination: 30-day written notice by either party \
  - Signature blocks for both parties with date lines \
  #v(0.3em)
  \#\# Output Format \
  Formal letter on letterhead format. Professional but readable — not a dense legal contract. 2-3 pages. Ready for review and signature. \
]

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
= Appendix 3: 50 Ready-to-Use Prompts

Copy any prompt below. Paste it into Claude or ChatGPT. Fill in the parts in [SQUARE BRACKETS] with your specifics. Press Enter. Edit the output as needed. Most prompts work with free-tier Claude or ChatGPT.
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== Client Communication
=== 1. Demand Notice Response Draft

_When to use:_ A client receives a tax demand and needs you to draft a reply to the department.
#quote-block[You are a senior Chartered Accountant helping draft a formal response to an Income Tax demand notice.

Details:
- Client name: [NAME]
- Assessment Year: [AY]
- Notice type: [e.g. 143(1) intimation / 148 reassessment / 245 adjustment]
- Demand amount: ₹[AMOUNT]
- Reason for demand as per notice: [PASTE TEXT FROM NOTICE OR SUMMARISE]
- Our position / reason to contest: [EXPLAIN CLIENT'S SIDE]

Draft a formal reply letter to the Assessing Officer. Tone: professional, factual, firm. Include a clear subject line, proper salutation, numbered points, and a request for the demand to be dropped / rectified. End with a request for a hearing date if applicable.]
=== 2. Tax Advisory Email to Client

_When to use:_ Explaining a tax position, planning opportunity, or risk to a client in plain language.
#quote-block[You are a Chartered Accountant writing an advisory email to a client. Write in clear, simple English — no jargon unless necessary, and explain any technical terms you use.

The client is a [TYPE: salaried individual / business owner / HUF / company director].

Advisory topic: [e.g. tax implication of selling residential property / ESOP taxation / switching to new tax regime]

Key points to cover:
1. [Point 1]
2. [Point 2]
3. [Point 3]

Also mention: any deadline or action required from the client, and what documents/information you need from them.

Format: professional email, warm but not informal, 3–5 short paragraphs.]
=== 3. GST Notice Response — Scrutiny

_When to use:_ Client receives GST scrutiny notice and needs a formal reply.
#quote-block[Draft a formal reply to a GST scrutiny notice on behalf of a registered taxpayer.

Taxpayer details:
- Name: [NAME]
- GSTIN: [GSTIN]
- Notice reference number: [REF NO.]
- Notice date: [DATE]
- Issue raised: [e.g. mismatch between GSTR-1 and GSTR-3B / ITC reversal demand / short payment]
- Amount involved: ₹[AMOUNT]
- Our explanation: [EXPLAIN IN 2–3 LINES]

Format: formal letter to the GST officer. Professional legal-adjacent language. Structure: opening, factual summary, our position, relief sought, enclosures list.]
=== 4. Overdue Fee Reminder — Gentle

_When to use:_ A client hasn't paid your fees and you want to follow up without damaging the relationship.
#quote-block[Write a professional but warm email reminding a client that their CA fee invoice is overdue.

Details:
- Client name: [NAME]
- Invoice number: [INV NO.]
- Invoice date: [DATE]
- Amount: ₹[AMOUNT]
- Days overdue: [X] days
- Relationship: [long-standing client / new client]

Tone: friendly but clear. Don't be apologetic for asking. Make it easy for them to pay — include a note that you're happy to receive UPI or NEFT.]
=== 5. Overdue Fee Reminder — Final Notice

_When to use:_ Second or third reminder, time to be firm.
#quote-block[Write a firm final reminder email for an overdue CA fee invoice. The client has not responded to previous reminders.

Details:
- Client name: [NAME]
- Invoice amount: ₹[AMOUNT]
- Now overdue by: [X] days
- Previous reminders sent: [NUMBER]

Tone: firm and professional, not aggressive. Make clear this is the final reminder before the matter is escalated. Mention that future work will be paused until payment is received.]
=== 6. Engagement Letter — New Client

_When to use:_ A new client is coming on board and you need a clean engagement letter.
#quote-block[Draft a professional CA engagement letter for a new client.

Details:
- Client name: [NAME / COMPANY NAME]
- Type of engagement: [GST compliance / ITR filing / full accounting + tax / statutory audit]
- Scope of work: [LIST KEY DELIVERABLES]
- Fee: ₹[AMOUNT] per [month/quarter/year] + GST
- Billing cycle: [monthly in advance / quarterly / on completion]
- Our firm name: [FIRM NAME]

Include: scope of services, what is NOT included, client responsibilities (document sharing, timelines), confidentiality clause, dispute resolution note, and signature blocks for both parties.]
=== 7. Client Data Collection Email

_When to use:_ Chasing a client for documents before a filing deadline.
#quote-block[Draft a polite but firm email to a client asking them to share documents for [ITR / GST / audit] filing.

Client type: [salaried individual / business owner / company]

Documents needed:
[LIST ALL DOCUMENTS]

Filing deadline: [DATE]
We need documents by: [DATE]

Tone: firm but warm — this client [always delays / is usually prompt / is new]. Make the deadline consequences clear without being threatening.]
=== 8. Budget Change Explainer

_When to use:_ Budget comes out and you want to quickly explain changes to clients.
#quote-block[The Union Budget [YEAR] has announced the following changes:
[PASTE OR SUMMARISE 3–5 KEY CHANGES]

Write a clear, friendly client update email explaining what these changes mean for a [salaried individual / small business owner / investor].

Rules:
- No technical jargon without explanation
- Use concrete examples with numbers where possible
- End with a clear action item or reassurance
- Keep it under 400 words
- Friendly but professional tone]
=== 9. WhatsApp Filing Deadline Reminder

_When to use:_ Nudging a client to send documents before a filing deadline via WhatsApp.
#quote-block[Write a WhatsApp-friendly reminder message to a client about an upcoming tax filing deadline.

Details:
- Client name: [NAME]
- Filing type: [ITR / GST return / TDS return]
- Deadline: [DATE]
- Documents still needed: [LIST]
- Your cut-off (when you need documents by): [DATE]

Format: short, casual, WhatsApp-appropriate. Not an email. Use line breaks, not paragraphs. Maximum 10 lines.]
=== 10. Breaking Bad News — Legitimate Tax Demand

_When to use:_ You need to tell a client there's a tax demand and it's legitimate.
#quote-block[Help me draft an email to a client explaining that a tax demand has come in and, after review, we believe a portion of it is legitimate.

Situation:
- Client name: [NAME]
- Demand amount: ₹[TOTAL]
- Portion we can contest: ₹[AMOUNT]
- Portion that needs to be paid: ₹[AMOUNT]
- Reason: [BRIEF EXPLANATION]
- Deadline to pay: [DATE]

Tone: honest, empathetic, professional. Be clear about what happened, what we've done, and what needs to happen next. Don't bury the bad news.]
=== 11. Audit Query to Management

_When to use:_ During audit, you need to formally communicate a query or finding to client management.
#quote-block[Draft a formal audit query letter from the statutory auditor to the management of a company.

Details:
- Company name: [NAME]
- Financial year: [FY]
- Query topic: [e.g. related party transaction not disclosed / unexplained creditor / fixed asset addition without supporting invoice]
- Specific transaction/amount: [DETAILS]
- Information requested: [WHAT YOU NEED]
- Deadline for response: [DATE]

Tone: formal, neutral, non-accusatory. Standard audit procedure, not an allegation.]
=== 12. Responding to Client's IT Notice

_When to use:_ Drafting a response to a standard scrutiny questionnaire (CASS cases).
#quote-block[Draft a response to an income tax scrutiny query.

Taxpayer: [NAME], PAN: [PAN], AY: [AY]
Query raised by department: [PASTE THE SPECIFIC QUERY]

Our response:
- Factual position: [EXPLAIN]
- Documents available: [LIST]
- Legal basis (if any): [SECTION / CIRCULAR / CASE LAW]

Draft a formal written submission. Numbered, clear, with an enclosures list at the end.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== Compliance & Regulatory
=== 13. Audit Observation — Internal Memo

_When to use:_ Writing a clean audit observation for inclusion in an internal report.
#quote-block[Write a formal audit observation in the style used in statutory audit reports.

Details:
- Observation title: [e.g. "Unreconciled Creditor Balances"]
- Area: [Accounts payable / Revenue / Fixed Assets / etc.]
- Finding: [DESCRIBE WHAT YOU FOUND]
- Amount involved: [₹AMOUNT or NUMBER OF INSTANCES]
- Risk / implication: [WHY THIS MATTERS]
- Recommendation: [WHAT THE COMPANY SHOULD DO]

Format: standard audit memo structure — Observation, Impact, Root Cause (if known), Recommendation, Management Response (leave blank).]
=== 14. GST Reconciliation Note

_When to use:_ Documenting GST reconciliation workings for audit purposes.
#quote-block[Write a GST reconciliation note explaining the difference between GSTR-1 and GSTR-3B for a client's records.

Details:
- GSTIN: [GSTIN]
- Period: [QUARTER / MONTH]
- GSTR-1 outward supplies: ₹[AMOUNT]
- GSTR-3B outward supplies declared: ₹[AMOUNT]
- Difference: ₹[AMOUNT]
- Reason for difference: [e.g. credit notes filed in next period / amendment in subsequent month / timing difference]

Format: brief reconciliation note suitable for internal documentation.]
=== 15. Transfer Pricing — Comparable Search Note

_When to use:_ Brief documentation note on comparables used for a TP study.
#quote-block[Draft a transfer pricing comparable search note for internal documentation.

Details:
- Taxpayer: [NAME]
- Related party transaction: [e.g. provision of IT services to parent company in [COUNTRY]]
- Amount: ₹[AMOUNT]
- Transfer pricing method used: [TNMM / CUP / CPM / etc.]
- Comparables selected: [LIST 3–5 COMPANY NAMES OR DESCRIBE SEARCH CRITERIA]
- PLI used: [e.g. Operating Profit / Net Cost]
- Result: [RANGE OR MEDIAN]

Write a one-page documentation note explaining the search process, rationale for method selection, and conclusion.]
=== 16. Form 3CD Clause 44 Expenditure Note

_When to use:_ Preparing or reviewing Form 3CD and need to draft an explanatory note.
#quote-block[Draft a note for Form 3CD Clause 44 expenditure breakdown for [BUSINESS NAME].

Financial year: [FY]
Total expenditure: ₹[AMOUNT]

Breakdown:
- Expenditure with GST registered suppliers: ₹[AMOUNT]
- Of which subject to composition: ₹[AMOUNT]
- Expenditure with unregistered suppliers: ₹[AMOUNT]
- Exempt / non-GST expenditure: ₹[AMOUNT]
- Import of goods/services: ₹[AMOUNT]

Write this as a professional disclosure note with a brief methodology note.]
=== 17. Director's Report — Going Concern Note

_When to use:_ Company is borderline and you need careful language in the Director's Report.
#quote-block[Draft a going concern note for inclusion in a company's Director's Report.

Situation:
- Company name: [NAME]
- Key concerns: [e.g. accumulated losses, negative net worth, working capital stress]
- Mitigating factors: [e.g. order book, promoter support letter, cost reduction plan]
- Auditor's position: [unqualified with emphasis / qualified / CARO going concern flag]

Write a balanced, honest note acknowledging concerns while presenting mitigating factors. Appropriate for statutory filing.]
=== 18. ITR Filing — Covering Letter

_When to use:_ Filing an ITR with unusual items and you want a covering note for the client's records.
#quote-block[Draft a covering letter/memo to accompany an ITR filing.

Client: [NAME]
AY: [AY]
Income heads: [LIST — e.g. salary, business, capital gains]
Total income declared: ₹[AMOUNT]
Tax paid: ₹[AMOUNT]
Refund claimed: ₹[AMOUNT]

Positions that may attract query:
1. [e.g. Capital loss on penny stocks claimed]
2. [e.g. Business deduction of ₹X for home office]

Write a short professional memo: what was filed, how tax was computed, and a note on positions taken with rationale. For client file, not for department submission.]
=== 19. FEMA Compliance — LRS Advisory

_When to use:_ A client wants to remit money abroad and needs an advisory.
#quote-block[Draft a brief advisory note to a client about the Liberalised Remittance Scheme (LRS) under FEMA.

Client type: [Individual / HUF]
Purpose of remittance: [e.g. overseas education / investment in foreign stocks / maintenance of relative]
Amount: USD [AMOUNT]

Cover: LRS annual limit, permissible purposes, TCS implications (rate, when applicable, how to claim credit), bank documentation required, any prohibited uses to flag.

Format: plain English advisory, not a legal brief. Short paragraphs.]
=== 20. CARO 2020 — Fraud Reporting Note

_When to use:_ You've identified something that may need to be reported under CARO's fraud clause.
#quote-block[Draft a CARO 2020 Clause 11 (fraud) disclosure note for the audit report.

Situation:
- Company: [NAME]
- Nature of fraud / suspected fraud: [DESCRIBE]
- Amount involved: ₹[AMOUNT]
- Perpetrators: [officers / employees / third parties / unknown]
- Management's awareness and action taken: [DESCRIBE]
- Auditor's conclusion: [Whether this rises to reporting level / still under investigation]

Draft as a formal CARO disclosure. Tone: factual, legally careful, no speculation.]
=== 21. Emphasis of Matter Paragraph

_When to use:_ Including an emphasis of matter in your audit report without qualifying your opinion.
#quote-block[Draft an "Emphasis of Matter" paragraph for a statutory audit report.

Situation:
- Company: [NAME]
- Matter to emphasise: [e.g. litigation uncertainty / going concern risk / restatement of prior year]
- Reference note in financial statements: [NOTE NUMBER]
- Audit opinion: unmodified — we are flagging this, not qualifying

Format: precise ICAI-compliant language. Single paragraph. Do not use words that modify the audit opinion.]
=== 22. Old vs New Regime Comparison

_When to use:_ Quick comparison when a client asks which regime to choose.
#quote-block[Compare old vs new tax regime for AY [YEAR].

Gross salary: ₹[AMOUNT]
HRA: ₹[AMOUNT] (rent paid: ₹[AMOUNT], [CITY])
Section 80C: ₹[AMOUNT]
NPS (employer): ₹[AMOUNT]
Section 80D: ₹[AMOUNT]
Home loan interest: ₹[AMOUNT]

Show the tax computation under both regimes side by side. State which regime saves more and by how much.]
=== 23. Section Explainer in Plain Language

_When to use:_ Explaining a legal section to a client or article who doesn't have legal background.
#quote-block[Explain Section [X] of the [Income Tax Act / GST Act / Companies Act] in simple language.

Context: I need to explain this to [a small business owner / a salaried client / an article / a banker] who has no legal background.

Include:
- What the section says in plain English
- A practical example using Indian rupees
- What the client needs to do (or not do) because of this section]
=== 24. Document Summariser

_When to use:_ Quickly understanding any document — circular, notice, contract, or regulation.
#quote-block[Read the following document and give me:
1. A one-paragraph summary of what this document is about
2. The 5 most important points
3. Any action items or deadlines mentioned
4. Any risks or issues I should flag to my client

[PASTE DOCUMENT TEXT HERE]]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== Internal Firm Operations
=== 25. Article Training — Concept Explainer

_When to use:_ Explaining an accounting or tax concept to a junior article in simple terms.
#quote-block[Explain [CONCEPT] to a CA article in their second year of training.

Concept: [e.g. deferred tax / transfer pricing documentation / revenue recognition under Ind AS 115 / CARO reporting]

They have theoretical knowledge from ICAI exams but limited practical exposure. Use:
- A simple plain-English explanation first
- Then a practical worked example using realistic Indian rupee amounts
- Then 2–3 common mistakes to watch out for in practice
- Keep it under 500 words total]
=== 26. Work Allocation Memo — Busy Season

_When to use:_ Distributing work to articles during ITR season or audit season.
#quote-block[Draft a work allocation memo to distribute among [NUMBER] CA articles during [ITR / GST / audit] season.

Work to be distributed:
[LIST CLIENTS / TASKS]

Staff:
- [ARTICLE 1]: [EXPERIENCE / STRENGTHS]
- [ARTICLE 2]: [EXPERIENCE / STRENGTHS]
- [ARTICLE 3]: [EXPERIENCE / STRENGTHS]

Create a fair allocation with clear ownership, deadline column, and priority order.]
=== 27. File Review Note

_When to use:_ Reviewing an article's work and giving written feedback.
#quote-block[Write a structured file review note for a CA article's work.

Context:
- Client: [NAME]
- Work reviewed: [e.g. ITR computation / bank reconciliation / audit working paper]
- Reviewer: [YOUR NAME]

Issues found:
1. [ISSUE 1]
2. [ISSUE 2]
3. [ISSUE 3]

Format: numbered review points, each with: what was wrong, why it matters, and the correct approach. Tone: firm but constructive. End with overall assessment (acceptable / needs revision / major rework needed).]
=== 28. Standard Operating Procedure

_When to use:_ Documenting your firm's standard process for a recurring task.
#quote-block[Create a standard operating procedure (SOP) for [TASK] in a small CA firm.

Task: [e.g. monthly GST filing process / TDS compliance / closing books at year-end]

Include:
- Purpose of the procedure
- Who is responsible (partner / senior article / junior article)
- Step-by-step process with checkpoints
- Common errors to watch for
- What to do if something goes wrong
- Sign-off/review requirements

Format: numbered steps. Clear enough for a new article to follow.]
=== 29. Staff Performance Feedback

_When to use:_ Conducting annual appraisals for articles or staff.
#quote-block[Draft an annual performance review note for a CA article.

Details:
- Name: [ARTICLE NAME]
- Year of training: [1st / 2nd / 3rd]
- Tenure: [X months]
- Key assignments completed: [LIST 2–3]
- Strengths: [LIST]
- Areas for improvement: [LIST]
- Recommended next steps: [e.g. assign more complex audits / leadership responsibilities]

Format: professional appraisal letter. Balanced — acknowledge effort, be honest about gaps. End with encouragement.]
=== 30. Partner Meeting Agenda

_When to use:_ Preparing for a monthly partners' or practice meeting.
#quote-block[Draft a structured agenda for a monthly partners' meeting.

Context:
- Firm size: [e.g. 2 partners, 6 articles]
- Month: [MONTH YEAR]
- Standing items: billing review, pending deadlines, new business, staff matters
- Special items this month: [ADD TOPICS]
- Duration: [60 / 90 minutes]

Format: time-boxed agenda with owner for each item. Include a brief framing question for each. Add space for action items.]
=== 31. Client Onboarding Checklist

_When to use:_ Taking on a new client — ensuring you collect everything before starting work.
#quote-block[Create a client onboarding document checklist for a new [TYPE] client.

Client type: [Individual ITR / Proprietorship / Private Limited / Partnership Firm]
Services: [GST / Tax / Audit / All compliance]

Generate a checklist categorised by:
1. Identity and registration documents
2. Tax registration documents
3. Financial records
4. Previous compliance records
5. Banking details
6. Other (entity-specific)

Also include information to collect verbally (business model, related parties, litigation history).]
=== 32. Internal Deadline Alert

_When to use:_ Creating or updating an internal deadline note for a client.
#quote-block[Draft a brief internal compliance deadline alert.

Client: [NAME]
Deadline: [DATE]
Filing type: [GSTR-3B / TDS return / ITR / ROC Annual Filing]
Responsible person: [NAME]
Documents needed from client by: [DATE]
Notes: [ANYTHING UNUSUAL]

Format: clean internal note, 5–8 lines, suitable for WhatsApp group or internal tracker.]
=== 33. Proposal for New Audit Engagement

_When to use:_ Bidding for a new audit or compliance assignment.
#quote-block[Draft a professional proposal letter for a new CA engagement.

Context:
- Prospect name: [COMPANY NAME]
- Type: [Statutory Audit / Internal Audit / Tax Advisory / Full Compliance]
- Their business: [BRIEF DESCRIPTION]
- Our relevant experience: [2–3 POINTS]
- Proposed fee: ₹[AMOUNT] + GST per [year/quarter]

Cover: why we're a good fit, scope of work, our approach, fee, and next steps.

Tone: confident but not salesy. Professional proposal, 2–3 pages. Proper paragraphs, not bullet soup.]
=== 34. Disengagement Letter

_When to use:_ Parting ways with a client professionally.
#quote-block[Draft a professional disengagement letter from a CA firm to a client.

Details:
- Client name: [NAME]
- Reason: [mutual agreement / non-payment / irreconcilable differences / conflict of interest]
- Outstanding matters: [e.g. pending ITR / GST returns / audit in progress]
- Handover: [what we will / won't transfer and timeline]
- Outstanding fees: ₹[AMOUNT] if any

Tone: professional, clear, no bridges burned. State what we are and aren't responsible for after this date.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== Business Development
=== 35. LinkedIn Post — Tax Tip

_When to use:_ Posting useful educational content on LinkedIn to build your CA profile.
#quote-block[Write a LinkedIn post from the perspective of an Indian Chartered Accountant sharing a useful tax tip.

Topic: [e.g. "5 things salaried employees forget before submitting their investment declaration" / "Why your GST ITC might get rejected"]

Format:
- Hook in the first line (no "I'm happy to share" openers)
- 4–6 short, scannable bullet points or numbered steps
- Practical, specific, actionable
- Closing line that invites engagement
- 3–4 relevant hashtags
- Max 250 words

Tone: expert but accessible. Helping, not lecturing.]
=== 36. LinkedIn Post — Client Win Story

_When to use:_ Sharing a success story professionally without naming the client.
#quote-block[Write a LinkedIn post describing a client win, without naming the client.

Situation:
- Client type: [e.g. small retailer / startup founder / salaried professional]
- Problem: [DESCRIBE]
- What we found/did: [DESCRIBE]
- Outcome: [QUANTIFY — e.g. saved ₹X / resolved ₹Y demand]

Format: short story — Problem → Insight → Action → Outcome. No jargon. First person. Max 200 words. End with a takeaway.]
=== 37. LinkedIn Bio for a CA

_When to use:_ Writing or refreshing your LinkedIn summary.
#quote-block[Write a LinkedIn "About" section for an Indian CA.

Details:
- Name: [NAME]
- Qualified: [YEAR], ICAI Membership: [NUMBER]
- Specialisation: [e.g. tax advisory / startup compliance / family office]
- Years of experience: [X]
- Practice type: [Solo / Firm with X partners / Industry role]
- 2–3 notable things: [e.g. managed tax for 200+ clients / set up 3 funded startups]
- Goal: [attract HNI clients / get referrals / build thought leadership]

Write 150–200 words. No boring "I am a qualified CA" openers. Start with what you do for clients.]
=== 38. Referral Thank You Note

_When to use:_ Someone refers a client and you want to acknowledge it professionally.
#quote-block[Write a warm thank-you note to a professional who referred a client to me.

Context:
- Referrer: [NAME — banker / lawyer / other CA / mutual friend]
- What they referred: [TYPE OF CLIENT]
- Our relationship: [close / professional acquaintance]

Format: short (5–8 lines), WhatsApp or email. Warm, specific (mention what they referred). End with a reciprocal offer.]
=== 39. WhatsApp Group Tip — Building Trust

_When to use:_ Sharing something valuable in a CA or client WhatsApp group.
#quote-block[Write a WhatsApp message sharing a useful tax or compliance tip, for a professional WhatsApp group.

Topic: [e.g. new deadline / common GSTR-9 mistake / Budget change affecting small businesses]

Rules:
- No markdown formatting (no headers, minimal bold)
- Short and scannable — 8–12 lines max
- Practical and specific — one clear thing to know or do
- End with: your name + "Happy to help if anyone has questions"
- Don't sound like an advertisement]
=== 40. Practice Brochure Copy

_When to use:_ Writing copy for a CA firm brochure, website, or presentation.
#quote-block[Write copy for a CA firm's services brochure / website about page.

Firm details:
- Firm name: [NAME]
- Established: [YEAR]
- Partners: [NUMBER], total team: [SIZE]
- City: [CITY]
- Core services: [LIST]
- Client profile: [e.g. SMEs, HNI individuals, exporters, startups]
- Differentiator: [WHAT MAKES YOU DIFFERENT]

Write 3 sections:
1. About the firm (80 words)
2. Our services (5–6 bullet points with a line each)
3. Why clients choose us (80 words)

Avoid phrases like "one-stop solution" and "committed to excellence." Say something real.]
=== 41. Fee Quote Email

_When to use:_ Responding to a prospect inquiry with a fee quote.
#quote-block[Draft a fee proposal email to a prospective client.

Context:
- Prospect: [NAME]
- They enquired about: [SERVICES]
- Business type: [DESCRIBE]
- Proposed scope: [WHAT YOU'LL DO]
- Fee: ₹[AMOUNT] per [period] + 18% GST
- Included: [LIST]
- Not included: [LIST]
- Billing: [Advance monthly / quarterly]

Don't bury the fee. State it clearly. Explain what they're getting. End with an invitation to discuss.]
=== 42. Testimonial Request

_When to use:_ Collecting client testimonials for your website or LinkedIn.
#quote-block[Write a message asking a happy client for a testimonial or Google review.

Context:
- Client: [NAME]
- Service provided: [e.g. ITR filing / audit / GST cleanup]
- Positive signal: [e.g. they thanked you / renewed / referred someone]
- Where you want the review: [Google / LinkedIn / website quote]

Format: WhatsApp-appropriate, short and genuine. Not transactional. Frame as helping others make informed decisions.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))
== Power Prompts — General
=== 43. Quick Email Reply Drafter

_When to use:_ Need to reply to any email quickly with the right tone.
#quote-block[I received the following email. Draft a professional reply.

Original email:
[PASTE EMAIL]

My intended response:
[EXPLAIN IN 2–3 LINES WHAT YOU WANT TO SAY]

Tone: [professional / warm / firm / brief]
Length: [short 3–4 lines / full response]]
=== 44. Bullet Points to Professional Email

_When to use:_ Converting rough notes into a polished email.
#quote-block[Turn these rough notes into a professional email.

Notes:
[PASTE YOUR BULLET POINTS OR ROUGH THOUGHTS]

Context: This is from a CA to a [client / colleague / banker / government officer]
Tone: [professional / advisory / firm / friendly]
Length: keep it concise.]
=== 45. Create a Checklist From a Procedure

_When to use:_ Turning a complex compliance procedure into actionable steps.
#quote-block[Turn this procedure into a numbered checklist I can give to my article.

Procedure: [DESCRIBE OR PASTE NOTES]

Format: numbered checklist with checkbox format. Group by phase (preparation / execution / review / filing). Include a "who is responsible" column and estimated time per step.]
=== 46. Meeting Notes to Action Items

_When to use:_ Converting meeting notes into clear action items with owners and deadlines.
#quote-block[Here are my rough notes from a meeting:

[PASTE MEETING NOTES]

Convert these into:
1. A brief summary of what was discussed (5 lines max)
2. A list of action items with: task, owner, deadline
3. Any decisions that were made
4. Any open questions that need follow-up

Format: clean and scannable. Suitable to share in a WhatsApp group or email.]
=== 47. Complex Calculation Verifier

_When to use:_ Double-checking a tax or financial calculation you've done manually.
#quote-block[Verify the following tax / financial calculation:

[PASTE YOUR CALCULATION WITH ALL ASSUMPTIONS AND STEPS]

Check:
- Are the rates and thresholds current for [AY / FY]?
- Are there any arithmetic errors?
- Are there any deductions or exemptions I may have missed?
- Is the final result correct?

Show your working step by step. Flag any discrepancies with my calculation.]
=== 48. Regulatory Change Impact Analysis

_When to use:_ Understanding how a new circular or notification affects your clients.
#quote-block[Analyse the following regulatory change:

[PASTE CIRCULAR / NOTIFICATION TEXT]

Tell me:
1. What changed (in plain English)
2. Who is affected (which types of taxpayers / businesses)
3. Effective date
4. What action my clients need to take (if any)
5. What action I need to take as their CA
6. Any ambiguity or open questions in the notification

Be specific. Use examples with Indian rupee amounts where helpful.]
=== 49. Client Situation Analyser

_When to use:_ Client describes a situation and you need to quickly identify the tax/compliance implications.
#quote-block[A client has described the following situation:

[PASTE CLIENT'S DESCRIPTION OR YOUR NOTES]

As a CA, analyse this and tell me:
1. What are the tax implications?
2. What are the compliance requirements?
3. What deadlines apply?
4. What documents will I need from the client?
5. Are there any planning opportunities?
6. Any red flags or risks to flag?

Be specific to Indian tax law. Cite relevant sections where applicable.]
=== 50. Peer Review of My Draft

_When to use:_ Getting a second opinion on something you've written before sending it.
#quote-block[Review the following draft [email / letter / notice response / advisory] that I'm about to send.

[PASTE YOUR DRAFT]

Check for:
- Factual accuracy (any claims that might be wrong?)
- Tone (appropriate for the recipient?)
- Completeness (anything missing that should be there?)
- Clarity (anything confusing or ambiguous?)
- Professionalism (anything that might reflect poorly?)

Give me specific suggestions, not general praise. If it's good, say so briefly and move on.]
#line(length: 100%, stroke: 0.4pt + rgb("#E2E8F0"))

_End of Appendix 3._ Start with the prompts that match your immediate needs. As you get comfortable, convert the ones you use most often into Custom GPTs or Claude Skills (Chapter 6) so you never have to copy-paste them again.

#pagebreak()
#v(3cm)
#align(center)[
  #rect(width: 2.5cm, height: 3pt, fill: accent)
  #v(1cm)
  #text(font: "Cormorant Garamond", size: 22pt, weight: "bold", fill: dark)[Questions, feedback, or corrections?]
  #v(0.6cm)
  #text(size: 12pt, fill: mid)[Drop us a line — we read every message.]
  #v(0.8cm)
  #text(font: "JetBrains Mono", size: 13pt, fill: accent, weight: "bold")[ai.playbook.editorial\@gmail.com]
  #v(2cm)
  #line(length: 40%, stroke: 0.4pt + rule-col)
  #v(0.8cm)
  #text(size: 11pt, fill: muted, style: "italic")[Found this useful? Share it with a fellow CA.#linebreak()The best recommendation is a WhatsApp forward.]
  #v(3cm)
  #text(size: 9pt, fill: muted)[© 2026 · The AI Playbook for Indian CA Firms]
]
