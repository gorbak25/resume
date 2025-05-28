#import "@preview/modernpro-cv:1.1.0": *

// Set up page with GDPR notice in footer
#set page(margin: (bottom: 2.5cm), footer: {
  v(0.3em)
  line(length: 100%, stroke: 0.5pt)
  v(0.3em)
  align(center, text(size: 0.6em, style: "italic")[I hereby give consent for my personal data to be processed for recruitment purposes in accordance with GDPR Art. 6(1)(a).])
})

#show: cv-single.with(
  font-type: "New Computer Modern",
  continue-header: "true",
  name: [Grzegorz Uriasz],
  address: [Warsaw, Poland],
  lastupdated: "true",
  pagecount: "true",
  date: "2025-05-27",
  contacts: (
    (text: [+48-510-853-467], link: "tel:+48-510-853-467"),
    (text: [uriasz.grzegorz\@gmail.com], link: "mailto:uriasz.grzegorz@gmail.com"),
    (text: [github.com/gorbak25], link: "https://github.com/gorbak25"),
    (text: [linkedin.com/in/grzegorz-e-uriasz], link: "https://www.linkedin.com/in/grzegorz-e-uriasz"),
    (text: [gorbak25.eu], link: "https://gorbak25.eu"),
  )
)

#set align(center)
#text(style: "italic", size: 1.1em)[Blockchain developer and cybersecurity expert with extensive experience in distributed systems. Passionate about building secure, high-performance software and sharing knowledge through teaching and open source contributions.]
#set align(left)

#sectionsep

#section("Education")
#education(
  institution: "University of Warsaw, Warsaw, Poland (MISMaP program)",
  major: "Computer Science and Physics",
  date: "October 2017 --- June 2020",
  description: [
    - Simultaneous undergraduate studies in Computer Science and Physics
    - Bachelor's degree in Computer Science from MIMUW
  ]
)

#sectionsep

#section("Experience")
#job(
  position: "Co-Founder",
  institution: "Hocus",
  date: "Feb 2023 - Nov 2023",
  description: [
    - Co-founded Hocus, a self-hosted alternative to GitHub Codespaces - https://hocus.dev
    - We got over 3000 stars on GitHub and were featured on the front page of Hacker News multiple times
    - Funding from Pioneer (Daniel Gross)
  ]
)

#job(
  position: "Principal Software Engineer/Architect",
  institution: "Student Coin",
  date: "May 2021 --- Jan 2023",
  description: [
    - Development of DeFi protocols, management of tech teams, involvement in recruitment processes, conducting technical job interviews, maintenance of server infrastructure
    - Created a high security Hot Wallet system which on the launch day processed a few million USD of value and still operates actively with thousands of ETH transactions made
    - Created a launchpad platform for SMT and LEAN token which raised \$1.2 mln
  ]
)

#job(
  position: "Technical Lead",
  institution: "Aeternity Blockchain",
  date: "August 2020 --- April 2021",
  description: [
    - Research and Development of Aeternity's Hyperchains blockchain consensus algorithm
  ]
)

#job(
  position: "Blockchain Developer",
  institution: "Aeternity Blockchain",
  date: "August 2018 --- Jul 2020",
  description: [
    - Development of state channel technology in cryptocurrency nodes
    - Elixir and Erlang software development
  ]
)

#job(
  position: "Web Application Security & Python Developer",
  institution: "Laboratorium EE",
  date: "April --- November 2017",
  description: [
    - Developed an automated web vulnerability scanner
  ]
)

#sectionsep

#section("Projects, Activities")
#descript([
  - #link("https://github.com/hocus-dev/hocus")[Hocus] — Spin up ready-to-code, disposable dev environments on your own servers. Self-hosted alternative to Gitpod and Github Codespaces
  
  - #link("https://github.com/erlscripten/erlscripten")[Erlscripten] — Erlang to PureScript transpiler
  
  - #link("https://github.com/grtrace/grtrace")[GrTrace] — Numerical simulation of light trajectories in curved spacetimes, based upon the equations of General Relativity. The project was awarded with a 4th award in the category of Physics & Astronomy on Intel International Science and Engineering Fair (ISEF)
  
  - #link("https://github.com/aeternity/aeternity")[Aeternity Node] — Many contributions to the cryptocurrency node which powers the Aeternity Blockchain
  
  - #link("http://www.qubes-os.org")[GPU passthrough in Qubes OS] — Bachelor Thesis, this project exists as a series of patches for xen, qemu, libvirt etc... capable of isolating the GPU to a designated security domain in Qubes OS
  
  - #link("https://github.com/cytadela8/trypophobia")[Trypophobia Image Detector] — Web browser extension implementing client side censoring of disturbing images via deep neural networks using Keras.JS
  
  - Organizing a Capture the Flag Cybersecurity competition for high school students during the 13th, 14th, 15th and 16th #link("https://warsztatywww.pl/article/en-indie-camp-for-hs-geeks/")[Summer Scientific School]
])

#section("Awards, Scholarships")
#award(
  award: [#link("https://www.cee.org/research-science-institute")[Research Science Institute] (Massachusetts Institute of Technology, USA)],
  date: "2017"
)

#award(
  award: [Represented Poland in the #link("https://ecsc.eu/")[European Cybersecurity Challenge]],
  date: "2018 - 2023"
)

#award(
  award: [4th award winner in the #link("https://student.societyforscience.org/intel-isef")[Intel International Science and Engineering Fair] (Los Angeles, USA), title of the presented work: "Numerical Methods of Raytracing in Curved Spacetimes According to Einstein's Theory of General Relativity"],
  date: "2017"
)

#award(
  award: [Final stages of multiple Polish Science Olympiads (Physics, 2x Computer Science, Astronomy)],
  date: "2016 --- 2017"
)

#sectionsep

#section("Teaching")
#descript([
  *Workshops in an 3h x 3days formula*
  - "Writing graphic applications using modern OpenGL" (August 2016)
  - "Pwn-ing Linux" (August 2017, July 2019)
  - "Learn Python" (October 2017, May 2018, May 2019)
  - "Cracking self-made cryptographic ciphers" (May 2018)
  - "Introduction to Reverse Engineering" (July 2018, August 2020)
  - "Introduction to smart contracts" (May 2019, July 2019)
  - "Stock market basics" (August 2021)
])

#sectionsep

#section("Skills")
#descript([
  - *Languages:* Polish (native), English (fluent)
  
  - *Programming Languages (Proficient):* Erlang, Elixir, Python, C++, C, Latex, Assembler Intel x86 & x86-64, SQL, JavaScript, Typescript, VueJS, Solidity
  
  - *Programming Languages (Familiar):* D, PHP, Java, Ocaml, Bash, Haskell, Prolog, Rust
  
  - *Cybersecurity:* Reverse Engineering, Binary Exploitation & More, Captain of the #link("https://ctftime.org/team/48557")[Made in MIM] CTF team
  
  - *Operating Systems:* Linux (daily driver for more than 6 years, favourite distro: Arch Linux, familiar with Ubuntu & Debian), Windows
  
  - *Technologies:* The Phoenix Framework, Django, AWS, Docker, Git, ZFS, Nest JS, Various ORM frameworks
  
  - *DevSecOps:* Kubernetes, PostgreSQL, ArgoCD, Helm, PgBouncer, familiarity with various Kubernetes Operators, Hashicorp Vault, Teleport(PAM solution)
])


