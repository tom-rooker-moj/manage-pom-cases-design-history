---
title: Parole journey (POM) version 1
description: Design proposal allowing POMs to keep an overview of their parole cases and see parole data on the prisoner profile page.
date: 2021-09-10
---

## Summary

We will get data from PPUD. This means the POM doesn’t need to input the Parole Review Date (PRD) manually in our service anymore. Parole Review Date will allow handover dates/responsibility calculations. In addition, getting the Hearing Date and the Hearing Outcome will create a useful overview.

Design proposal allowing POMs to keep an overview of their parole cases and see parole data on the prisoner profile page.

This design was tested in week beginning Sept 6th 2021.


{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Parole cases",
      img: { src: "01-parole.png" }
    }, {
      text: "Prisoner Profile: Remain in closed conditions",
      img: { src: "02-prisoner-profile-closed-conditions.png" }
    }, {
      text: "Prisoner Profile: Move to open conditions",
      img: { src: "03-prisoner-profile-open-conditions.png" }
    }, {
      text: "Prisoner Profile: Recommended for release",
      img: { src: "04-prisoner-profile-release.png" }
    }, {
      text: "Caseload - Overview",
      img: { src: "05-caseload-overview.png" }
    }, {
      text: "Caseload - Filter: All cases",
      img: { src: "06-caseload-all-cases.png" }
    }, {
      text: "Caseload - Filter: Allocations in the last 7 days",
      img: { src: "07-caseload-new-allocations.png" }
    }, {
      text: "Caseload - Filter: Releases in the next 14 days",
      img: { src: "08-caseload-releases.png" }   
    }, {
      text: "Search",
      img: { src: "09-search.png" }   
    }, {
      text: "Search results",
      img: { src: "10-search-results.png" }     
    }]
}) }}

## What will change on each screen in the next iteration

### Parole cases

* Changes?


### Prisoner profile

* Changes?


### Caseload - Overview

* Changes?


### Caseload - Filters

* Changes?


### Search

* Changes?