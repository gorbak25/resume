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
  institution: "University of Warsaw, Warsaw, Poland",
  location: "MISMaP program",
  dates: "October 2017 - June 2020",
  degree: "Computer Science and Physics",
)
- Simultaneous undergraduate studies in Computer Science and Physics
- Bachelor's degree in Computer Science from MIMUW

== Work Experience

#work(
  title: "Co-Founder",
  company: "Hocus",
  location: "https://hocus.dev",
  dates: "Feb 2023 - Nov 2023",
)
- Co-founded Hocus, a self-hosted alternative to GitHub Codespaces
- We got over 3000 stars on GitHub and were featured on the front page of Hacker News multiple times
- Funding from Pioneer (Daniel Gross)

#work(
  title: "Principal Software Engineer/Architect",
  company: "Student Coin",
  location: "",
  dates: "May 2021 - Jan 2023",
)
- Development of DeFi protocols, management of tech teams, involvement in recruitment processes, conducting technical job interviews, maintenance of server infrastructure
- Created a high security Hot Wallet system which on the launch day processed a few million USD of value and still operates actively with thousands of ETH transactions made
- Created a launchpad platform for SMT and LEAN token which raised \$1.2 mln

#work(
  title: "Technical Lead",
  company: "Aeternity Blockchain",
  location: "",
  dates: "August 2020 - April 2021",
)
- Research and Development of Aeternity's Hyperchains blockchain consensus algorithm

#work(
  title: "Blockchain Developer",
  company: "Aeternity Blockchain",
  location: "",
  dates: "August 2018 - Jul 2020",
)
- Development of state channel technology in cryptocurrency nodes
- Elixir and Erlang software development

#work(
  title: "Web Application Security & Python Developer",
  company: "Laboratorium EE",
  location: "",
  dates: "April - November 2017",
)
- Developed an automated web vulnerability scanner

== Projects & Activities

- Hocus — Spin up ready-to-code, disposable dev environments on your own servers. Self-hosted alternative to Gitpod and Github Codespaces
- Erlscripten — Erlang to PureScript transpiler
- GrTrace — Numerical simulation of light trajectories in curved spacetimes, based upon the equations of General Relativity. The project was awarded with a 4th award in the category of Physics & Astronomy on Intel International Science and Engineering Fair (ISEF)
- Aeternity Node — Many contributions to the cryptocurrency node which powers the Aeternity Blockchain
- GPU passthrough in Qubes OS — Bachelor Thesis, this project exists as a series of patches for xen, qemu, libvirt etc... capable of isolating the GPU to a designated security domain in Qubes OS
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
