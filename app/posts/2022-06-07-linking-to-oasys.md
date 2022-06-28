---
title: Linking to OASys
description: How we are providing relevant risk information to users.
date: 2022-06-10
---



**What value does the Offender Assessment System (OASys) assessment provide (if any) when making an allocation decision?**
That was the research question we had in mind during the last sprint.

Through earlier research sessions and workshops we'd ascertained that the four main documents users felt were required in order to make an allocation decision were; the Crown Prosecution Service (CPS) pack, Previous convictions (precons), Pre-sentence report (PSR), and the last OASys assessment.

Our product goal was to link to each of those documents directly, until such time as we could import the relevent information as structured content.

In practice though, we found that sometimes these documents just were not available. And specifically in the case of OASys assements, we could not directly link to them as they didn't really exist as a final document - more a series of completed screens in another tool. Therefore we could only show the type and date of the last assessment.

For testing, we included a fictional link in the prototype to understand what the expectation from users would be.

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'OASys link before update',
  image: {
    file: '1-oasys-link-before.png'
  }
}) }}

**We knew that:**
- An OASys assessment enables the Senior Probation Officer (SPO) to better understand the factors driving the level of risk for a Person on Probation (PoP)
- A key piece of risk information the SPO seeks to understand from the OASys is the different Risk of Serious Harm (ROSH) categories (e.g. whether the PoP is a risk to staff/the public/children)
- Understanding whether the PoP is a risk to staff is particularly relevant for allocation purposes

This information is available in detail within the 'risk' screen of the PoP view, so what in particular were SPOs after, and how could we provide it?

There is variation in practice as to the level of detail a SPO would read the OASys assessment in (if at all).
Factors influencing the likelihood to read an OASys may include familiarity with the PoP, whether the case is high risk, time available, and allocation demand

### The latest OASys assessment may not be the most detailed.

SPOs therefore have a need to choose which OASys assessment they would like to read.


>"It's useful to have the option of going into whatever OASys you want to…you do sometimes flick into historic OASys assessments to get a more rounded picture of the case"
– Senior probation officer



{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'OASys link after update',
  image: {
    file: '2-oasys-link-after.png'
  }
}) }}

By removing the information about the type of assessment, and the date it was completed, we are now not providing any information to the user about OASys assessments. Our hypothesis is that the risk scores will satisfy the user need in most case, and when they don't the user would need to interrogate OASys directly. The link would take them directly to OASys to begin that work. It's not currently possible to 'deep link' to the specific individual within the system. The was not seen as a blocker in early research sessions.


#### Some other bonus changes
While looking at the OASys link, we'e also improved the accessibility and clarity of the other document links by:
- changing 'last updated' to 'uploaded'
- moving the type of PSR into the filename.

We'll continue to test the performance of these links and update where neccessary.