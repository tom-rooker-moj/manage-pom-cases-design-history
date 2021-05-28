---
title: POM handover journey version 1
description: Design proposal allowing POMs to keep track of their handover work with email reminders and a tasklist.
date: 2021-05-19
---

## Summary

Design proposal allowing POMs to keep track of their handover work with email reminders and a tasklist.

This design was tested in week beginning May 3rd 2021.


{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Overview",
      img: { src: "01-overview.png" }
    }, {
      text: "Case list",
      img: { src: "02-case-list.png" }
    }, {
      text: "Cases missing com details",
      img: { src: "03-cases-missing-com-details.png" }
    }, {
      text: "Manage email reminders",
      img: { src: "04-manage-email-reminders.png" }
    }, {
      text: "Record handover progress",
      img: { src: "05-record-handover-progress.png" }
    }, {
      text: "OASys task",
      img: { src: "06-oasys-task.png" }
    }]
}) }}

## What will change on each screen in the next iteration

### Overview

* We could remove this screen and rely on the sub nav headings providing this numeric overview. For example, 'Handover cases to prepare (2)'
* Change the copy on the 'Manage the emails you receive' link so that it reflects that these are email reminders
* Rehome the email reminders link in order to make this action more findable

### Case list

* Split the two tables over two pages, using the sub nav for navigation
* Add a count to the sub nav. Eg 'Handover cases to prepare (2)'
* Add release date to these tables to help users prioritise action
* Remove 'COM' column from the 'Prepare for handover' table
* Consider the rules for highlighting cases. For example, highlighting cases by displaying a green bar when there is less than 2 weeks before a COM is due to be allocated
* Consider how we show the status of specific handover tasks from this case list page


### Cases missing COM details

* Provide guidance on what to do in the scenario where MPC does not have LDU details. For example, telling people how to find out the sentencing court details
* Consider the rules for how we count 'days since COM allocation requested', especially if the community might have been told about the case more than once  

### Manage email reminders

* Policy and best practice suggests 8 weeks is enough time to send an email notifying POMs that handover is approaching. Some POMs were surprised by how much lead time we were suggesting. We need to provide explanation in hint text about why this is the right amount of notice.
* On the missing COM details reminder, remove reference to one week. Consider replacing with just "overdue".
* COM handover meeting reminder – rephrase as it's the COM who owns the meeting and broaden focus to make it more about establishing informal communication with the COM

### Record handover progress

* Remove the details component in the sidebar