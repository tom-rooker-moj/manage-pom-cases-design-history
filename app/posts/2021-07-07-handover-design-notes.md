---
title: Handover design notes (DRAFT)
description: Description of UI behaviour of a new MPC handover feature
date: 2021-07-07
---

## Outline

The proposed design for a new handover feature in Manage POM cases has different views for POMs and HOMDs.

In each view, handovers are broken up across a set of tables with the intention of helping users keep track of their handover cases.

Additionally, POMs can mark specific handover tasks as completed on a task list, with progress visible in their own view, as well as to their manager.

A set of email reminders also flags important events in the handover process and the proposal is that POMs will be able to manage which of these emails they receive.

## How cases move through the tables

Both the POM view and the HOMD view share the same main tables. These are Prepare for handover, Share case information and Cases missing COM details.

* Cases appear on the Prepare table 8 weeks before the COM allocation date
* They move from Prepare to Share on the date of COM allocation, even if a COM has not been allocated
* If a case is missing COM details after the COM allocation date, it should remain on the Share table. However, it should also be displayed on the Cases missing COM details table

## Content the tables should display

Most of the content of the table is self-explanatory, but a couple of things may need a bit of clarification.

### Responsibility transfer date

This column contains information about the dates that responsibility passes to the community.

* Always show the date that the COM will become responsible
* If COM will support the case, show the date this will start above the COM responsible date

### Release date

POMs indicated it’s useful to have release date type because it gives them a sense of how certain it is that someone will be released. For example, if someone is eligible for parole, it is less certain they will be released than someone who is not. It also allows them to work out when they should start communicating with the COM.

We should display one of the following types of release date on the Prepare, Share and Cases missing COM details tables. If a prisoner has more than one release date, display the earliest one. 

* Conditional release date
* Automatic release date
* HDC eligibility date
* HDC actual date
* Parole eligibility date
* Tariff expiry date
* Parole review date

Release date type should be proceeded by a colon and then the release date, like this:

Automatic release date: 04 Jun 2021

### Table highlights

We use red and green highlights on the tables to flag up important dates. The red highlight is applied to cases on the Share and Cases missing COM details tables when 

* Red highlight should be applied on the day after COM allocation if a COM has not been allocated
* Green highlight should appear 7 days before COM becomes responsible for the case. Text below should indicate 

### Handover task list

We show different tasks depending on the organisation that is supervising the case, as outlined in the handover policy.

If the case is an NPS case, show these tasks:

* Review OASys
* Share case information with COM
* Attend handover meeting

If the case is a CRC case, show these tags: 

* Review OASys
* Share case information with COM
* Send handover report