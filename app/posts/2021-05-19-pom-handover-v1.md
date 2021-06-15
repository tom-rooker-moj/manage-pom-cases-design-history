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

* <strong>We could remove this screen and rely on the sub nav headings providing this numeric overview. For example, 'Handover cases to prepare (2)'</strong>
* Change the copy on the 'Manage the emails you receive' link so that it reflects that these are email reminders (Changed – TR)
* Rehome the email reminders link in order to make this action more findable (Changed but might not work if we remove this page – TR)

### Case list

* <strong>Split the two tables over two pages, using the sub nav for navigation</strong>
* <strong>Add a count to the sub nav. Eg 'Handover cases to prepare (2)'</strong>
* Add release date to these tables to help users prioritise action (Changed – TR)
* Remove 'COM' column from the 'Prepare for handover' table (Changed – TR)
* <strong>Consider the rules for highlighting cases. For example, highlighting cases by displaying a green bar when there is less than 2 weeks before a COM is due to be allocated</strong>
* <strong>Consider how we show the status of specific handover tasks from this case list page</strong>


### Cases missing COM details

* Provide guidance on what to do in the scenario where MPC does not have LDU details. For example, telling people how to find out the sentencing court details (Changed – TR)
* <strong>Consider the rules for how we count 'days since COM allocation requested', especially if the community might have been told about the case more than once</strong>  

### Manage email reminders

* Policy and best practice suggests 8 weeks is enough time to send an email notifying POMs that handover is approaching. Some POMs were surprised by how much lead time we were suggesting. We need to provide explanation in hint text about why this is the right amount of notice. (Changed – TR)
* On the missing COM details reminder, remove reference to one week. Consider replacing with just "overdue". (Changed – overdue)
* COM handover meeting reminder – rephrase as it's the COM who owns the meeting and broaden focus to make it more about establishing informal communication with the COM (Changed – TR)

### Record handover progress

* Remove the details component in the sidebar (Changed – TR)
* Change "Resident details" to "Prisoner details" – does this make it more consistent with the rest of DPS/MPC? (Changed – TR)

## Additional changes made by Tom

* Reformatted the prepare and share tables to change some of the labels and position of some dates. I did this because:
    * "COM supports" worked well for NPS determinate cases, but less so for other kinds of cases. 
    * Wanted to work case type in there as a separate field – didn't feel like it fit into the COM supports table
    * Date COM supports isn't always the same as handover start date. We're suggesting 8 weeks before COM allocation should be handover start date
    * Similarly, case list tables here suggest that handover completion date is the date COM takes responsibility. But don't think this works for indeterminate/parole eligible cases, when COM takes responsibility as soon as they are allocated
* On screenshot here, we specify that only NPS cases could appear on the Cases missing COM details tab. Stephen seemed quite confident (https://mojdt.slack.com/archives/GCLDGDD6J/p1623746859033800) that we could retrieve this information for CRC cases too. So I've removed the mention of NPS. 

