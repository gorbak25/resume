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
  margin-bottom: 2cm,
  margin-rest: 1.25cm,
)

#set align(left)
#set text(style: "italic")
#block(inset: (y: -0.5pt), width: 100%)[Blockchain developer and cybersecurity expert with extensive experience in distributed systems. Passionate about building secure, high-performance software and sharing knowledge through teaching and open source contributions.]
#set text(style: "normal")
#set align(left)

== Education

#edu(
  institution: "University of Warsaw, MIMUW",
  dates: dates-helper(start-date: "Oct 2017", end-date: "Jun 2020"),
  degree: "Bachelor's degree in Computer Science",
  compact: true
)
- Thesis "GPU passthrough in Qubes OS" resulted in patches for the xen hypervisor, qemu and libvirt capable of isolating an physical GPU to a designated security domain in Qubes OS. Some of my patches got #link("https://github.com/xen-project/xen/commit/f325d2477eef8229c47d97031d314629521c70ab")[upstreamed].
- Founded the #link("https://ctftime.org/team/48557/")[Made In MIM] CTF team and became its Captain. The team was rated 25th in the world in 2018.

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

== Projects & Activities
- GrTrace — Numerical simulation of light trajectories in curved spacetimes, based upon the equations of General Relativity. The project was awarded with a 4th award in the category of Physics & Astronomy on Intel International Science and Engineering Fair (ISEF)
- Trypophobia Image Detector — Web browser extension implementing client side censoring of disturbing images via deep neural networks using Keras.JS
- Organizing a Capture the Flag Cybersecurity competition for high school students during the 13th, 14th, 15th and 16th Summer Scientific School

== Awards & Scholarships

#generic-two-by-two(
  top-left: "Research Science Institute",
  top-right: "2017",
  bottom-left: "Massachusetts Institute of Technology, USA",
  bottom-right: ""
)

#generic-two-by-two(
  top-left: "European Cybersecurity Challenge",
  top-right: "2018 - 2023",
  bottom-left: "Represented Poland in the competition",
  bottom-right: ""
)

#generic-two-by-two(
  top-left: "Intel International Science and Engineering Fair",
  top-right: "2017",
  bottom-left: "4th award winner (Los Angeles, USA)",
  bottom-right: "\"Numerical Methods of Raytracing in Curved Spacetimes According to Einstein's Theory of General Relativity\""
)

#generic-two-by-two(
  top-left: "Final stages of multiple Polish Science Olympiads",
  top-right: "2016 - 2017",
  bottom-left: "Physics, 2x Computer Science, Astronomy",
  bottom-right: "",
)

== Teaching

#generic-one-by-two(
  left: [*Workshops in an 3h x 3days formula*],
  right: "",
)

- Writing graphic applications using modern OpenGL (August 2016)
- Pwn-ing Linux (August 2017, July 2019)
- Learn Python (October 2017, May 2018, May 2019)
- Cracking self-made cryptographic ciphers (May 2018)
- Introduction to Reverse Engineering (July 2018, August 2020)
- Introduction to smart contracts (May 2019, July 2019)
- Stock market basics (August 2021)

== Skills

- *Languages:* Polish (native), English (fluent)
- *Programming Languages (Proficient):* Erlang, Elixir, Python, C++, C, Latex, Assembler Intel x86 & x86-64, SQL, JavaScript, Typescript, VueJS, Solidity
- *Programming Languages (Familiar):* D, PHP, Java, Ocaml, Bash, Haskell, Prolog, Rust
- *Cybersecurity:* Reverse Engineering, Binary Exploitation & More, Captain of the Made in MIM CTF team
- *Operating Systems:* Linux (daily driver for more than 6 years, favourite distro: Arch Linux, familiar with Ubuntu & Debian), Windows
- *Technologies:* The Phoenix Framework, Django, AWS, Docker, Git, ZFS, Nest JS, Various ORM frameworks
- *DevSecOps:* Kubernetes, PostgreSQL, ArgoCD, Helm, PgBouncer, familiarity with various Kubernetes Operators, Hashicorp Vault, Teleport(PAM solution)
