---
title: Homd handover v1
description: Design proposal allowing HOMDs to keep track of handover work in their prison with a checklist and dashboard.
date: 2021-05-27
---
## Summary

Design proposal allowing HOMDs to keep track of handover work in their prison with a checklist and dashboard.

This design was tested in week beginning May 17th 2021.

## User stories

As a HOMD
I need to know the status of handover progress (including but not limited to, has OASys been reviewed, has the handover meeting happened?)
So that I know when I need to step in to support my team.

As a HOMD
I need to know which handover cases are high risk
So that I can monitor them more closely.

As a HOMD
I need to know when a COM has not been allocated
So that I can escalate an overdue COM allocation.

As a HOMD
I need to know that the POM and the COM are communicating
So that I can be reassured and know when I need to step in to support my team.

As a HOMD
I need to run regular supervision meetings with my POM, part of which involves discussing handovers
So that I can support my team members with any handover-related issues.

As a HOMD
I need to know what a good handover looks like
So that I can support my team members to know how to do handovers well.


{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Handover overview",
      img: { src: "01-handover-overview.png" }
    }, {
      text: "Handover case list prepare",
      img: { src: "02-handover-case-list-prepare.png" }
    }, {
      text: "Handover case list sharing details",
      img: { src: "03-handover-case-list-sharing-details.png" }
    }, {
      text: "Releases list",
      img: { src: "04-releases-list.png" }
    }, {
      text: "Com allocation overdue list",
      img: { src: "05-com-allocation-overdue-list.png" }
    }, {
      text: "View pom workload overview",
      img: { src: "06-view-pom-workload-overview.png" }
    }, {
      text: "View pom workload caseload",
      img: { src: "07-view-pom-workload-caseload.png" }
    }, {
      text: "View pom workload handover cases",
      img: { src: "08-view-pom-workload-handover-cases.png" }
    }]
}) }}

## What will change on each screen in the next iteration

### Overview

* Instead of using separate pages, have 5 tabs on a single page for: Overview, Cases to prepare, Cases being shared, Releases in next 14 days and Cases missing COM details
* Replace the By stage pie chart with with  bar chart. Bar chart conveys a sense of moving through a process 
* Rename the By stage labels as POM preparing and POM sharing were not readily understood. <strong>NOTE: Do we want to look at adding COM responsible to this chart? That may help to represent cases that don't get a supporting COM</strong>
* Replace By type with By release date type. Values for this would be: Conditional release date, Actual release date, Parole eligibility date, Tariff expiry date, Parole review date. <strong>NOTE: Think we need to keep exploring this. Full list of vaules needs to be confirmed. We could get some feedback from Laura once we've implemented it</strong>

### Cases for handover

* Update tables on Prepare and Share tabs with layout from the POM view
* Reduce the number of tasks in line with the POM view
* Order tables by release date. This should make it easy for HOMDs to see if cases coming up for release have missing handover tasks

### Releases in next 14 days

* Order so the highest tier cases are at the top of the table
* Combine release date and release date type columns

### COM allocation overdue

* Bring table in line with the POM view
* Change Days since COM allocation requested to show the number of days since COM should have been allocated. <strong>NOTE: Column header TBC</strong> 
* Order by how late the cases are

<hr>

## Notes from a previous version of this post

### Overview

* Useful for HOMD users to have an overview, especially the number of cases for handover and the number of cases with COM allocation overdue
* Review 'By stage' label and key. Some participants were not clear what this chart was showing. Once it was explained to them, they found it useful to understand the balance of immediate intensity / future handover work
* Consider using a stacked bar chart instead of a pie chart for 'stage' because there is a sense of timeline and cases moving through a process, which a pie chart does not convey
* For all charts it is important to show the totals within the key for people who are more comfortable with numeric data than visualisations
* If implementing any charts, it is important to review the latest MoJ design system accessibility review and consider how to make these charts accessible to all users
* Consider removing the 'By type' breakdown, which was not seen as useful by participants
* Consider the 'Releases in next 14 days' information. Some participants found this data confusing, because they don't have a mental link between releases and handovers. They see them as two separate processes


### Handover case list

* The checklist feature was seen as very useful. It provided the right level of information at a glance, and the use of colour and cross/ check icons helped participants quickly identify cases that looked problematic
* Review what items should be included in the checklist and how this data could be captured by POM users. At the highest level, HOMDs wanted to understand:
1. Has a COM been allocated at the right time?
2. Is the POM in contact with the COM?
3. Has the POM reviewed the latest OASys assessment?
4. Has the handover meeting happened? Or for legacy CRC cases, has the handover form been shared by the POM?
* Consider how this list is ordered. Participants wanted to sort this list either by risk (high tier first), or to have this list in "panic order please" (P3), with missing checklist items or missing COM allocations at the top
* Consider including the release date in this list
* Consider a means for the user to see all cases managed by a particular POM. We delivered that via the 'View POM workload' view, but some participants expected to be able to filter this list from here
* Decide on rules for when the red and green warning stripe would display. Participants found the red visual cue very helpful when scanning information in this list


### Releases list

* If release dates are being included in the general handover case list, the need for this screen may go away
* Consider whether 14 days is the right amount of time. One participant said they would prefer 1 month
* Consider including the checklist of handover tasks in this view, so that the user can confirm that all of the POM handover tasks are complete and the case is "ready to go" (P4)
* Participants found it useful to see the release date type. For example, CRD

### COM allocation overdue list

* Consider who should have access to this view. Potentially case administrators
* Review the copy of 'Legacy CRC case - no supporting COM required'. Some participants were confused by this, but the term 'Legacy CRC' is currently a new concept for all users


### View POM workload: overview

* Change the content in the 'Current workload' table to make items more specific and status driven. For example, are these tasks due or overdue? And instead of approaching parole, cases coming up for parole in the next 6 months
* Explore whether we can get this data for OASys and recategorisations. Participants found it very useful, and suggested it would provide value for the POMs to view their work in this way
* Explore whether we can allow users to drill into this data. For example, the ability to view a list of the 6 cases with an OASys review due and the type of OASys (start custody OASys)
* Case mix by tier and POM role was valuable

### View POM workload: caseload

* No changes needed. Useful to be able to see this list. Participants would use this list in supervision sessions

### View POM workload: handover cases

* This page very well received, especially the checklist feature and use of red warning stripes.  
* As before, review the copy of 'Legacy CRC case - no supporting COM required'. Some participants were confused by this, but the term 'Legacy CRC' is currently a new concept for all users
* As before, review what items should be included in the checklist and how this data could be captured by POM users.
* As before, decide on rules for when the red and green warning stripe would display. Participants found the red visual cue very helpful when scanning information in this list
