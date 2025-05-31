#import "resume.typ": *

// Personal information
#let name = "Grzegorz Uriasz"
#let location = "Warsaw, Poland"
#let email = "uriasz.grzegorz@gmail.com"
#let github = "github.com/gorbak25"
#let linkedin = "linkedin.com/in/grzegorz-e-uriasz"
#let phone = "+48 510 853 467"
#let personal-site = "gorbak25.eu"

#let gdrp-text = "I hereby give consent for my personal data included in my application to be processed for the purposes of the recruitment process under the European Parliament's and Council of the European Union Regulation on the Protection of Natural Persons as of 27 April 2016, with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (Data Protection Directive)."

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
#block(inset: (y: -0.5pt), width: 100%)[Blockchain developer and cybersecurity expert with extensive experience in distributed systems. Passionate about building secure, high-performance software and sharing knowledge through teaching and open source contributions.]
#set text(style: "normal")
#set align(left)

== Work Experience
#work(
  title: "Co-Founder",
  company: "Hocus",
  location: "Warsaw, Poland",
  dates: dates-helper(start-date: "Feb 2023", end-date: "Nov 2023"),
)
- Built an open-source self-hosted alternative to GitHub Codespaces on top of the Temporal workflow engine which attracted funding from Daniel Gross' Pioneer accelerator and got us 2 interviews with Y Combinator.
- We received over 3000 stars on GitHub and our blog posts got featured on the front page of Hacker News multiple times.
- Ran sales campaigns to find Enterprise Design Partners and viable pivots via mass outreach and content marketing.

#work(
  title: "Principal Software Engineer",
  company: "Student Coin",
  location: "Warsaw, Poland",
  dates: dates-helper(start-date: "May 2021", end-date: "Jan 2023"),
)
- Gradually over multiple months migrated our MVP with 250k active users to a new co-existing NestJS codebase designed to be an basis for an crypto exchange. The new platform was used to fundraise \$1.2 mln for external clients.
- Lead the SysOps/DevOps team and migrated services to self-hosted kubernetes managed via ArgoCD and SaltStack. 
- Scaled development by conducting technical interviews, growing the inhouse development team from 5 to 20+ developers, while reporting directly to the CTO and ensuring project alignment with our roadmap and external teams.
- Co-designed DEFI protocols on the Ethereum blockchain which are currently under NDA.
- Created a high security scalable EVM Hot Wallet system which on launch day processed millions of dolars in value.

#work(
  title: "Technical Lead",
  company: "Aeternity Blockchain",
  location: "Remote",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Apr 2021"),
)
- Lead the team responsible for the Aeternity's Hyperchains consensus algorithm. Wrote the #link("https://github.com/aeternity/hyperchains-whitepaper/releases/download/2.0.0/whitepaper.pdf")[whitepaper] for it.
- Created #link("https://github.com/erlscripten/erlscripten")[Erlscripten] which was an open-source Erlang to PureScript transpiler.

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
- Thesis "GPU passthrough in Qubes OS" resulted in patches for the xen hypervisor, qemu and libvirt capable of isolating an physical GPU to a designated security domain in Qubes OS. Some of my patches got #link("https://github.com/xen-project/xen/commit/f325d2477eef8229c47d97031d314629521c70ab")[upstreamed].
- Founded the #link("https://ctftime.org/team/48557/")[Made In MIM] CTF team and became its Captain. The team was rated 25th in the world in 2018.

== Achievements & Scholarships
#block([
  // So it uses way more compact layout
#set list(marker: [])
- #generic-one-by-two(
  left: [#link("https://www.cee.org/sites/default/files/PR/PDF/2017_rsi_convention_at_mit.pdf")[34#super[th] Research Science Institute], 6-week academic research program held at MIT, Massachusetts, USA.],
  right: "2017"
)
- #generic-one-by-two(
  left: [Officially represented Poland 5 times in the #link("https://ecsc.eu/")[European Cybersecurity Challenge] CTF.],
  right: dates-helper(start-date: "2018", end-date: "2023")
)
- #generic-one-by-two(
  left: [4#super[th] place award in the category of Physics & Astronomy at #link("https://www.societyforscience.org/press-release/intel-international-science-and-engineering-fair-2017-grand-award-winners/")[Intel ISEF] in Los Angeles, USA.],
  right: "2017"
)
- #generic-one-by-two(
  left: [Finalist of the XXIII and XXIV #link("https://oi.edu.pl/contestants/Grzegorz%20Eugeniusz%20Uriasz/")[Polish Olympiad in Computer Science].],
  right: "2016 - 2017"
)
- #generic-one-by-two(
  left: [Finalist of the LX Polish Olympiad in Astronomy and LXV Polish Olympiad in Physics],
  right: "2016 - 2017"
)
])

== Projects, Activities & Volunteering
- Organized 12 workshops for gifted high school students teaching them Cybersecurity, Blockchain and Programming.
- Organized a Cybersecurity CTF for beginners 4 times at the #link("https://warsztatywww.pl/")[WWW Science Camp] and prepared challenges for it.
- Authored 3 CTF challenges(including a blockchain one) for the Polish ECSC 2024 Qualifiers via a #link("https://nask.pl/")[NASK] commission.
- GrTrace - General Relativity raytracer written in D with TCL scripting. Presented at Intel ISEF 2017
- MapaNFZ - interactive map of public Polish Healthcare providers written in React and Typescript.

== Skills
- *Programming:* Solidity, Typescript, Rust, SQL, Python, Erlang/Elixir. Touched multiple others over the years.
- *Algorithms:* Multi year experience with competitive programming before university.
- *Cybersecurity:* Multi-year experience with CTFs, reverse engineering, binary exploitation and more.
- *Containers and Virtualization:* Low level knowledge. Contributed to the #link("https://github.com/firecracker-microvm/firecracker/commit/f472eda1e13f7ae4172d974ea81547c32dfb9a41")[Firecracker] and #link("https://github.com/xen-project/xen/commit/f325d2477eef8229c47d97031d314629521c70ab")[Xen] hypervisor.
- *Kubernetes:* ArgoCD, Helm, Operators, self-hosting, experience with different runtimes like sysbox or kube-virt.
- *Languages:* Polish (native), English (fluent).
