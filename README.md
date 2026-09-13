# Web Design Project — HTML, CSS, XML, XSL & DTD

A themed website built for a case-study organisation, combining static HTML/CSS pages with an XML data page styled and transformed using XSL, validated against a DTD.

## Overview

- **Main Page** (`index.html`) — general info about the organisation (address, contact details, opening times), including a paragraph, a list, and a table, styled with CSS.
- **Program Page** (`data.xml`) — stores structured data following a custom DTD schema, rendered as a table in the browser via an XSL stylesheet.
- Both pages link to each other.

## Tech Stack

- HTML5
- CSS3
- XML
- XSL / XSLT
- DTD (Document Type Definition)

## File Structure

```
├── index.html      # Main page
├── style.css        # Styling for the main page
├── data.xml         # Program page (data source)
├── data.dtd         # DTD schema for data.xml
├── style.xsl        # XSL stylesheet for transforming data.xml
└── README.md
```

## Running Locally

Modern browsers block XSLT execution on local files for security reasons, so `data.xml` needs to be served over HTTP rather than opened directly:

```bash
# from the project folder
python3 -m http.server
```

Then open:

```
http://localhost:8000/index.html
http://localhost:8000/data.xml
```

## Notes

Built as part of a university coursework module (Information in Organisations). All HTML/XML files are kept in the same folder as required for submission.
