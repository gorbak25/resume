// @preview/basic-resume:0.2.8 with some changes

#import "@preview/scienceicons:0.1.0": orcid-icon
// <GORBAK_CUSTOM> added font awesome icons
#import "@preview/fontawesome:0.5.0": fa-icon
// </GORBAK_CUSTOM>

#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  author-font-size: 20pt,
  font-size: 10pt,
  // <GORBAK_CUSTOM> added text-lang, gdrp-text, margin-* parameter
  text-lang: "en",
  gdrp-text: "",
  margin-bottom: 0.5in,
  margin-rest: 0.5in,
  // </GORBAK_CUSTOM>
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: font-size,
    lang: text-lang,
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  // Reccomended to have 0.5in margin on all sides
  set page(
    margin: (rest: margin-rest, bottom: margin-bottom),
    paper: paper,
    footer: { if gdrp-text != "" {
      v(-0.4em)
      par(leading: 0.5em, justify: true,
        text(size: 8pt, style: "italic", fill: gray)[#gdrp-text]
      )
    }}
  )

  // Link styles
  show link: underline


  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: author-font-size,
    )
    #pad(bottom: 0em, it.body)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", icon: "", link-type: "") = {
    if(icon != "") {
      box(fa-icon(icon))
      h(3pt) // Add horizontal spacing between icon and text
    }
    if value != "" {
      if link-type != "" {
        box(link(link-type + value)[#(prefix + value)])
      } else {
        box(value)
      }
    }
  }

  // Location under page title
  if location != "" {
    pad(
      top: 0em,
      bottom: 0em,
      align(center)[
        #set text(
          size: 9pt,
          weight: "regular"
        )
        #location
      ]
    )
  }

  // Contact info with icons below location
  pad(
    top: -0.6em,
    bottom: -0.4em,
    align(center)[
      #set box(height: 9pt)
      #set text(
        size: 9pt,
        weight: "regular",
        style: "normal"
      )
      
      #{
        let separator = [  #box(sym.bar.v)  ]
        let items = ()
        
        if pronouns != "" {
          items.push(contact-item(pronouns))
        }
        if phone != "" {
          items.push(contact-item(phone, icon: "square-phone", link-type: "tel:"))
        }
        if email != "" {
          items.push(contact-item(email, icon: "envelope", link-type: "mailto:"))
        }
        if github != "" {
          items.push(contact-item(github, icon: "github", link-type: "https://"))
        }
        if linkedin != "" {
          items.push(contact-item(linkedin, icon: "linkedin", link-type: "https://"))
        }
        if personal-site != "" {
          items.push(contact-item(personal-site, icon: "globe", link-type: "https://"))
        }
        if orcid != "" {
          items.push(contact-item(orcid, prefix: [#orcid-icon(color: rgb("#AECD54"))orcid.org/], link-type: "https://orcid.org/"))
        }
        
        items.filter(x => x != none).join(separator)
      }
    ]
  )

  // Main body.
  set par(justify: true, spacing: 0.9em, leading: 0.6em)
  
  // Add a small space before the main content
  v(0.3em)
  
  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
  // Makes dates on upper right like rest of components
  consistent: false,
  // New parameter to use the compact one-line format
  compact: false,
) = {
  if compact {
    // New compact one-line format using generic-one-by-two
    generic-one-by-two(
      left: [#strong(institution) -- #degree  #if location != "" [- #location]],
      right: dates,
    )
  } else if consistent {
    // edu-constant style (dates top-right, location bottom-right)
    generic-two-by-two(
      top-left: strong(institution),
      top-right: dates,
      bottom-left: emph(degree),
      bottom-right: emph(location),
    )
  } else {
    // original edu style (location top-right, dates bottom-right)
    generic-two-by-two(
      top-left: strong(institution),
      top-right: location,
      bottom-left: emph(degree),
      bottom-right: emph(dates),
    )
  }
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-one-by-two(
    left: [#strong(title + ",") #company #if location != "" [-- #location]],
    right: dates,
  )
}

#let project(
  role: "",
  name: "",
  url: "",
  dates: "",
) = {
  generic-one-by-two(
    left: {
      if role == "" {
        [*#name* #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
      } else {
        [*#role*, #name #if url != "" and dates != ""  [ (#link("https://" + url)[#url])]]
      }
    },
    right: {
      if dates == "" and url != "" {
        link("https://" + url)[#url]
      } else {
        dates
      }
    },
  )
}

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  [
    *#name*, #issuer
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let extracurriculars(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )
}
