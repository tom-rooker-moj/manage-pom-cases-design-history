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
* If a case is missing COM details after the COM allocation date, it should remain on the Share table. However, it should also be displayed on the Cases missing COM details table. Once a case is allocated a COM, it should be removed from this table
* A case should stay on the Share table until the release date is reached.

## Content the tables should display

Most of the content of the tables is self-explanatory, but a couple of things may need a bit of clarification.

### Responsibility transfer date

This column contains information about the dates that responsibility passes to the community.

* Always show the date that the COM will become responsible
* If COM will support the case, show the date this will start above the COM responsible date

### Release date

POMs indicated it is useful to have release date type because it gives them a sense of how certain it is that someone will be released. For example, if someone is eligible for parole, it is less certain they will be released than someone who is not. It also allows them to work out when they should start communicating with the COM.

We should display one of the following types of release date on the Prepare, Share and Cases missing COM details tables. If a prisoner has more than one release date, display the earliest one. 

* CRD (Conditional release date)
* ARD (Automatic release date)
* HDCED (HDC eligibility date)
* HDCEA (HDC actual date)
* PED (Parole eligibility date)
* TED (Tariff expiry date)
* PRD (Parole review date)

Release date type should be followed by a colon and then the release date, like this:

ARD: 04 Jun 2021

## Table highlights

We use red and green highlights on the tables to flag up important dates. The red highlight is applied to cases on the Share and Cases missing COM details tables when 

* Red highlight should be applied on the day after COM allocation if a COM has not been allocated
* Green highlight should appear 7 days before COM becomes responsible for the case. Text below should indicate 

## Handover task list

We show different tasks depending on the organisation that is supervising the case, as outlined in the handover policy.

If the case is an NPS case, show these tasks:

* Review OASys
* Have contact with COM
* Attend handover meeting

If the case is a CRC case, show these tasks: 

* Have contact with COM
* Send handover report

POMs can record progress on specific cases by ticking off tasks. Once a task's status is updated by a POM, this is reflected in the progress column in the HOMD view.

Eventually, there will be no difference between handovers for NPS and CRC cases and the tasks in the first task list will need to be implemeted across the board.

## Handover reminder emails

Part of the feature involves sending reminder emails at important points in the handover process. <a href="https://docs.google.com/document/d/1VeXNQDZqQERde3MIfcCdxZTumza5UWPIWLcphSaOVfM/edit?usp=sharing" target="_blank">The content of each email is on this Google doc</a>.

This is when each email should be sent:

### 8 weeks before COM allocation

Send this email:

* For all types of case
* 8 weeks before date of COM allocation
* As long as a COM has been allocated after that date

### When a COM has been allocated

Send this email:

* For all cases
* On the date of COM allocation
* As long as COM has been allocated

### COM allocation overdue

Send this email:

* For all types of case
* On the day after COM allocation
* If a COM has not been allocated

### To check handover tasks are in hand towards the end of the process

Send this email:

* For all types of case
* 7 days before COM takes responsibility 

### When a COM has become responsible 

Send this email:

* For all types of case
* On the date that COM takes responsibility if a COM has been supporting
* 7 days after COM takes responsibility for a case with no supporting period (?)

