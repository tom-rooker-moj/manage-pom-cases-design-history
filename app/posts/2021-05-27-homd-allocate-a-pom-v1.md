---
title: HOMD allocate a POM journey 1
description: Design proposal allowing HOMDs to follow a 3 step process to allocate cases to POMs.
date: 2021-05-27
---

## Summary

Design proposal allowing HOMDs to follow a 3 step process to allocate cases to POMs.
1. Review the case
2. Choose a POM
3. Notify people about the allocation

This design was tested March 2021.

## User stories

As a HOMD
I need to understand enough information* about the person in prison
So that I can match them with the right type of POM and the right individual POM (depending on skills, experience etc).

* information needs will vary depending on HOMD working style, stage of sentence, and prison type_

As a HOMD
I need to understand my team’s workload and capacity and their skills and experience
So that I can distribute cases fairly and support my staff as needed.

As a POM
I need to know when I am allocated a new case
So that I can get to know the individual and start working on the case.

As a HOMD
I need to inform other people in the prison about the allocation (e.g. case admin, HOMS)
So that they can do their work in relation to the case

As another member of staff who will be working with the individual
I need to know who their allocated POM is
So that I can work with the POM to support the individual.

## User testing

View the research deck: https://docs.google.com/presentation/d/1fMG92CvtfVQfW_BXlfDNzf7UgLfdR-ebzFa2dFE-UmU/edit?usp=sharing

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Make allocations list",
      img: { src: "01-make-allocations-list.png" }
    }, {
      text: "Review case details",
      img: { src: "02-review-case-details.png" }
    }, {
      text: "View case activity",
      img: { src: "03-view-case-activity.png" }
    }, {
      text: "Choose a pom",
      img: { src: "04-choose-a-pom.png" }
    }, {
      text: "Notify people about allocation",
      img: { src: "05-notify-people-about-allocation.png" }
    }, {
      text: "Add new contact",
      img: { src: "06-add-new-contact.png" }
    }, {
      text: "Update existing contact",
      img: { src: "07-update-existing-contact.png" }
    }, {
      text: "Confirmation make allocations list",
      img: { src: "08-confirmation-make-allocations-list.png" }
    }]
}) }}

## What will change on each screen in the next iteration

### Review the case

* Include this information on the same page as the ‘Choose a POM’ table. Splitting this into two screens made the journey feel longer to users and prevented them from skimming between task 1 review case, and task 2 choose a POM
* Do not use the blue service user summary banner. This is the 3rd time we’ve tested this with users and they have failed to see it for the 3rd time. There is an issue with this component. This finding has been shared within the probation designers CoP
* Use the accordion pattern (or similar) to collapse sections to make the view more compact. For some users we are displaying too little information about a case, for others too much. Allow the user to choose what information they need to see. Digital Prison Services (DPS) have done some interesting things with accordions on their prisoner profile page
* Restructure the information architecture in the tables to create the following sections:
* Sentence
* Offence
* Case management and handover
* Risks and needs
* Offender Management contacts
* Pull out the most important information and display it to all users by default. Including:
* Tier
* Identifiable information (name, date of birth, NOMIS ID)
* Risks and alerts that will affect allocation (more details below)
* Sentence type
* Main offence
* Release Date
* Whether a recall or parole eligible case
* Details of previous allocation to an active POM in that prison
* Display the date of the most recent OASys assessment and, if possible, the type of assessment
* Display a breakdown of risk: what is the risk level and who is the risk against? The Assess risks and needs team in the Probation Programme have done some work around this
* Display NOMIS/ DPS alerts that will affect an allocation decision, including risk to females, racist, risk to staff
* Remove case history, but clearly display the details of any POMs in the current prison that have worked with the individual before, and the length of time of this allocation
* Explore giving visibility of previous and concurrent offences. It can help the person allocating establish a pattern of offending behaviour or past violent sexual crime that can heighten somebody's tier. Not everybody needs to see this information, so it should be collapsed by default.
* There are technical issues with showing how far through a sentence somebody is, so we cannot include the visualisation although some participants found it useful. If it could be included in the future, make it custody specific. For example, time left in custody until release on license / parole eligibility
* There are technical limitations with linking directly to OASys, although participants found this helpful

### Choose a POM

* Use ‘tier mix’ bars
* Explore options around a toggle to allow user to switch view (by tier mix bars or by numeric columns). Some users prefer seeing numeric information without the bars
* Include previously allocated POM details in the table and above the table
* Explore design options that allow the person allocating to compare the workload of 2 or 3 POMs in more detail. This could be as simple as linking directly to the View a POM caseload page within the 'Manage Staff' area of the service

### Notify people about the allocation

* Content improvements required to make it clearer that this list of people is prison-wide, not specific to the case
* Consider whether this email could be saved anywhere as a paper trail
