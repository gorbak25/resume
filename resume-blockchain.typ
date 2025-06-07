#import "templates/basic-resume.typ": *

// Personal information
#let name = "Grzegorz Uriasz"
#let location = "Warsaw, Poland"
#let email = "uriasz.grzegorz@gmail.com"
#let github = "github.com/gorbak25"
#let linkedin = "linkedin.com/in/grzegorz-e-uriasz"
#let phone = "+48 510 853 467"
#let personal-site = "gorbak25.eu"

#let gdrp-text = "I hereby give consent for my personal data included in my application to be processed for the purposes of the recruitment process under the European Parliament's and Council of the European Union Regulation on the Protection of Natural Persons as of 27 April 2016, with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (Data Protection Directive)."

#let headline = "Blockchain developer, cybersecurity expert, and open-source enthusiast with extensive commercial and entrepreneurial experience. Passionate about teaching, sharing knowledge, and low-level hacking to make things go ludicrously fast."

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  text-lang: "en",
  author-position: center,
  personal-info-position: center,
  gdrp-text: gdrp-text,
  margin-bottom: 1.8cm,
  margin-rest: 1.25cm,
)

#v(-0.3em)
#set align(left)
#set text(style: "italic")
#block(inset: (y: -0.5pt), width: 100%)[#headline]
#set text(style: "normal")
#set align(left)

== Work Experience
#work(
  title: "Co-Founder",
  company: "Hocus",
  location: "Warsaw, Poland",
  dates: dates-helper(start-date: "Feb 2023", end-date: "Nov 2023"),
)
- Built an open-source, self-hosted alternative to GitHub Codespaces on top of the Temporal workflow engine, which attracted funding from Daniel Gross's Pioneer accelerator and resulted in two interviews with Y Combinator.
- We received over 3,000 stars on GitHub, and our blog posts #link("https://hn.algolia.com/?dateRange=all&page=0&prefix=false&query=hocus.dev%2Fblog&sort=byPopularity&type=story")[were featured] on the front page of Hacker News.
- Ran sales campaigns to find Enterprise Design Partners and viable pivots via mass outreach and content marketing.

#work(
  title: "Principal Software Engineer",
  company: "Student Coin",
  location: "Warsaw, Poland",
  dates: dates-helper(start-date: "May 2021", end-date: "Jan 2023"),
)
- Migrated our MVP with 250k active users to a new coexisting NestJS codebase designed to be a basis for a cryptocurrency exchange. The new platform was used to fundraise \$1.2 million for external clients.
- Led the SysOps/DevOps team and migrated services to self-hosted Kubernetes managed via ArgoCD and SaltStack.
- Conducted technical interviews while reporting directly to the CTO and ensuring projects aligned with our roadmap.
- Co-designed DeFi protocols on the Ethereum blockchain (currently under NDA).
- Created a highly secure scalable EVM Hot Wallet system which on launch day processed millions of dollars in value.

#work(
  title: "Technical Lead",
  company: "Aeternity Blockchain",
  location: "Remote",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Apr 2021"),
)
- Led the team responsible for Aeternity's Hyperchains consensus algorithm and authored the #link("https://github.com/aeternity/hyperchains-whitepaper/releases/download/2.0.0/whitepaper.pdf")[Hyperchains whitepaper].
- Created #link("https://github.com/erlscripten/erlscripten")[Erlscripten], which was an open-source Erlang-to-PureScript transpiler.

#work(
  title: "Blockchain Developer",
  company: "Aeternity Blockchain",
  location: "Remote",
  dates: dates-helper(start-date: "Aug 2018", end-date: "Jul 2020"),
)
- Developed state channel technology in Erlang as part of the core Erlang team working on the Aeternity node.
- Worked on an alternate Aeternity protocol implementation in Elixir.

#work(
  title: "Web Application Security & Python Developer",
  company: "Laboratorium EE",
  location: "Remote",
  dates: dates-helper(start-date: "Apr 2017", end-date: "Nov 2017"),
)
- Developed an automated web vulnerability scanner using Python and Django.

== Education
#edu(
  institution: "University of Warsaw, MIMUW",
  dates: dates-helper(start-date: "Oct 2017", end-date: "Jun 2020"),
  degree: "Bachelor's degree in Computer Science",
  compact: true
)
- Thesis "GPU passthrough in Qubes OS" resulted in patches for the Xen hypervisor, QEMU, and libvirt capable of isolating a physical GPU into a designated security domain in Qubes OS. Some of my patches got #link("https://github.com/xen-project/xen/commit/f325d2477eef8229c47d97031d314629521c70ab")[upstreamed].
- Founded the #link("https://ctftime.org/team/48557/")[Made In MIM] CTF team and became its Captain. The team was rated 25th in the world in 2018.

== Achievements & Scholarships
#block([
  // So it uses way more compact layout
- #generic-one-by-two(
  left: [Officially represented Poland five times in the #link("https://ecsc.eu/")[European Cybersecurity Challenge] CTF.],
  right: dates-helper(start-date: "2018", end-date: "2023")
)
- #generic-one-by-two(
  left: [#link("https://www.cee.org/sites/default/files/PR/PDF/2017_rsi_convention_at_mit.pdf")[34#super[th] Research Science Institute], a six-week academic research program held at MIT in the USA.],
  right: "2017"
)
- #generic-one-by-two(
  left: [4#super[th] place award in the category of Physics & Astronomy at #link("https://www.societyforscience.org/press-release/intel-international-science-and-engineering-fair-2017-grand-award-winners/")[Intel ISEF] in Los Angeles, USA.],
  right: "2017"
)
- #generic-one-by-two(
  left: [Finalist of the XXIII and XXIV #link("https://oi.edu.pl/contestants/Grzegorz%20Eugeniusz%20Uriasz/")[Polish Olympiad in Computer Science].],
  right: dates-helper(start-date: "2016", end-date: "2017")
)
- #generic-one-by-two(
  left: [Finalist of the LX Polish Olympiad in Astronomy and the LXV Polish Olympiad in Physics.],
  right: dates-helper(start-date: "2016", end-date: "2017")
)
])

== Projects, Activities & Volunteering
- Organized 12 workshops about cybersecurity, blockchain, and programming for gifted high school students.
- Organized a cybersecurity CTF for beginners four times at the #link("https://warsztatywww.pl/")[WWW Science Camp], and prepared challenges for it.
- Authored 3 CTF challenges (including a blockchain one) for the Polish ECSC 2024 Qualifiers via a #link("https://nask.pl/")[NASK] commission.
- #link("https://github.com/grtrace/grtrace")[GrTrace] $dash.em$ General Relativity raytracer written in D with Tcl scripting. Presented at Intel ISEF 2017.
- #link("https://mapanfz.pl/")[MapaNFZ] $dash.em$ Interactive map of public Polish healthcare providers written in React and TypeScript.

== Skills
- *Programming:* Solidity, TypeScript, Rust, SQL, Python, Erlang/Elixir, and many others over the years.
- *Algorithms:* Multi-year experience with competitive programming.
- *Cybersecurity:* Multi-year experience with CTFs, reverse engineering, binary exploitation, and more.
- *Containers and Virtualization:* Low-level knowledge. Contributed to the #link("https://github.com/firecracker-microvm/firecracker/commit/f472eda1e13f7ae4172d974ea81547c32dfb9a41")[Firecracker] and #link("https://github.com/xen-project/xen/commit/f325d2477eef8229c47d97031d314629521c70ab")[Xen] hypervisors.
- *Kubernetes:* ArgoCD, Helm, Operators, self-hosting, experience with different runtimes like sysbox or kube-virt.
- *Languages:* Polish (native), English (fluent).
