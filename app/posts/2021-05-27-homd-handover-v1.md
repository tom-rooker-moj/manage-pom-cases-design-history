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

## User testing

View the research deck: INSERT

## What will change on each screen in the next iteration

### Overview

* Change

### Handover case list

* Change


### Releases list

* Change

### COM allocation overdue list

* Change


### View POM workload: overview

* Change

### View POM workload: caseload

* Change

### View POM workload: handover cases

* Change
