---
title: MPC allocations – design notes
description: Details of the new allocations journeys
date: 2022-07-21
---

MPC already has this functionality, introduced when the service was first launched. This work aims to meet a number of the user needs that have come up since then, now that OMIC policy and the service are more embedded in prisons’ way of working.

These notes describe the main allocation journey, as well as the reallocation and co-working POM allocation journey.

Aims of the work:

1. Provide more information about the prisoner, so the HOMD can choose the best POM to work with them
2. Allow the HOMD to compare the workloads of different POMs, so cases can be allocated equitably around the team
3. Be more transparent with some of the rules of the service to make it clearer why we recommend each type of POM

Most of the pages in the prototype are direct replacements for pages currently in the service.

## Allocations

### Make allocations

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/make-allocations">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/make-allocations</a>
**Replaces this page in the live service:** <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/unallocated">https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/unallocated</a>

#### Main features

* New “Additional information” column displaying the values below. Show both values on different lines if 2 are true – eg recall and new to the prison. Show recall on the top line if more than one value for additional information is true.
    - New to custody – never been in prison before
	- New to this prison – been in prison before, but first time here
	- Returning to this prison – been in this prison before
    - Recall – been recalled to this prison
* “Days waiting for allocation” on the current page changes to “Working days since entering this prison”. This new count should exclude weekends and bank holidays
* Tier column is new to this page, but is used on several other pages in the service
* “Case owner” on current page changes to “POM role needed” – values should be Supporting (replacing Community) or Responsible (replacing Custody)
* “There are currently…” copy on current page should be removed
* Current header of “Make new allocations” changes to “Make allocations”. New header should be a h2. New h1 of Allocations should be added to the page.

### Review case details

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step1-review-case-jack-smith">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step1-review-case-jack-smith</a>
**Replaces this page in the live service:** <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/G3782UC/staff">https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/G3782UC/staff</a>

#### Main features

* Layout of current page should be reformatted in line with the prototype – main changes include introducing the “at a glance” box and new accordions
* Add risk information at the side of the page. This is dependent on <a href="https://dsdmoj.atlassian.net/browse/MO-1051">this ticket</a> being completed, which should help developers get a sense of the technical architecture involved in retrieving this data. 
* In the Sentence and offence accordion, only display the release dates we have for the prisoner in the following format:
    - Conditional release date
    - Actual release date
    - Parole eligibility date
    - Tariff expiry date
    - Home detention curfew actual date
    - Home detention curfew eligibility date
    - Sentence expiry
    - Licence expiry
    - Post-recall release
    - Parole review date (soon to be renamed to Target parole hearing date)
* Only show the Handover start date field if handover start date is different to Handover completion date
* Hide the allocation history link in the More information section if prisoner has no allocation history
* Show the name and email of the most recently allocated previous POM – only if someone has worked on the case before. Hide these fields if not
* Implement empty state messages according to this doc <a href="https://docs.google.com/document/d/1gnIMpDT3XuZAZSKmDM-h7taIIjKw7ojnpm1JipbC578/edit?usp=sharing">https://docs.google.com/document/d/1gnIMpDT3XuZAZSKmDM-h7taIIjKw7ojnpm1JipbC578/edit?usp=sharing</a>
* The “Change” link in the tier row may shortly be removed for cases that are linked with NDelius. It will form a separate piece of work once this has been confirmed.
* We are suggesting to include COM email on this page. We do not currently display this in the service. This should be available from the Community API in the allOffenderManagers endpoint.

### Allocate a POM 

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2-select-pom-jack-smith">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2-select-pom-jack-smith</a>
**New page**

#### Main features

* Sentence underneath “Choose a POM” header should change depending on recommended POM type
* Page contains an explanation of the recommendation for which type of POM should be selected. The text for each of the conditions covered in the current logic is as follows:

<table>
	<thead>
	<tr>
		<th>Condition</th>
		<th>POM type needed</th>
		<th>Text to display</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>If it's an immigration case</td>
		<td>Prison POM</td>
		<td>This is an immigration case, so should be given to a prison POM</td>
	</tr>
	<tr>
		<td>If the POM is responsible and the offender is tier A or B</td>
		<td>Probation POM</td>
		<td>{prisoner-name} is tier {tier}, so we recommend allocating to a probation POM</td>
	</tr>
	<tr>
		<td>If the POM is responsible and the offender is not tier A or B</td>
		<td>Prison POM</td>
		<td>As {prisoner-name} is tier {tier}, we recommend allocating to a prison POM</td>
	</tr>
	<tr>
		<td>If the POM is not responsible</td>
		<td>Prison POM</td>
		<td>{prisoner-name} needs a POM in a supporting role, so should be allocated to a prison POM</td>
	</tr>
	<tbody>
</table>

* Display names of the last 3 POMs who have worked with the prisoner before and the dates they were allocated. Hide if no POMs at the prison have worked with the prisoner before
* Table sorting should be in this order:
    1. POM role – placing recommended POM role at the top 
    2. Previously allocated POMs 
    3. Total cases – place POMs with fewest cases at the top
* A complexity of need column will need to be added to the table for women’s prisons. This is in the live service at the moment, so will just be a case of ensuring it is in the new design as well.
* If a POM is chosen that is not the recommended type, the user should be taken to the <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2-select-pom-jack-smith-override">“Why are you allocating a prison/probation POM?” page</a>. Note: this is not a complete reflection of the <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/G3782UC/staff/486649/build_allocations/override">current page</a> but shows the change that's needed is removal of the word "officer" across the page.

### Compare POMs


**Prototype link**: <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2b-select-pom-jack-smith">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2b-select-pom-jack-smith</a>
**New page**


#### Main features

* Highlight any POMs who have been previously allocated to work with this person
* Case mix graphics come from caseload pages so styling can be reused
* The parole cases count on the Compare POMs screens will also need to implemented once work on the new parole information screens has been completed. 
* There is a box about OASys assessments due in the next 2 months. This is dependent on the completion of <a href="https://dsdmoj.atlassian.net/browse/MO-1026">this ticket</a>. Once this task is completed we will need to revisit the relevant label text to make sure it is consistent with the data that has been retrieved. 
* If a POM is chosen that is not the recommended type, the user should be taken to the <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2-select-pom-jack-smith-override">“Why are you allocating a prison/probation POM?” page</a>. Note: this is not a complete reflection of the current page but show the changes that's needed is removal of the word "officer" from the header.
* The user should only be allowed to select 4 POMs to compare workloads for. If more than this are chosen, display the message on <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step2-select-pom-jack-smith-error">this page</a>. 

### Check allocation details

**Prototype link**: <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step3-confirm-allocation-jack-smith">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step3-confirm-allocation-jack-smith</a>
**Replaces this page in the service**: <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/G7578GR/staff/485787/build_allocations/allocate">https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/G7578GR/staff/485787/build_allocations/allocate</a>

#### Main features

* Hide risk information if there isn’t any to display (ie ROSH, MAPPA and alerts)
* Only show the Handover start date field if handover start date is different to Handover completion date
* Always show LDU/COM info, even if values are unknown

### Allocation success message

**The message at the top of this page in the prototype**: <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step4-success-msg-jack-smith">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/step4-success-msg-jack-smith</a>
**Replaces the success message at the top of this page**:<a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/unallocated">https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/unallocated</a>

#### Main features

* Pull through content from Additional notes text box on Check allocation details page
* “Copy this information” button should copy the text in the dropdown to the clipboard 

## Reallocation

The “Currently allocated to…” text appears below the main heading on each page in this journey.

Only pages with changes that are different to those in the other journeys here are described. 

### See allocations

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/see-allocations">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/see-allocations</a>
**Replaces this page in the live service:** <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/allocated">https://dev.moic.service.justice.gov.uk/prisons/LEI/prisoners/allocated</a>

#### Main features

* Move Allocations h1 to top of page and add new subheading of See allocations
* Addition of Tier column
* Choosing a prisoner’s name on this list should take the user to the current “Reallocate a POM” page. There is currently no new version of this screen as there is for the allocation journey.   

### Review case details

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step1-review-case-simon-riley">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step1-review-case-simon-riley</a>
**New page**

#### Main features

* Add details of currently allocated POM in the at a glance box as per the prototype

### Allocate a POM

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step2-select-pom-simon-riley">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step2-select-pom-simon-riley</a>
**New page**

#### Main features

* Previously allocated POMs should be shown at the top of the table. If the currently allocated POM has also previously worked with the prisoner, we should show their name in the the Previously allocated section. 
* Currently allocated POM is also flagged in the table. If the currently allocated POM has also previously worked with the prisoner, we should only display the “Currently allocated” label on the table. 

### Compare POMs

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step2b-select-pom-simon-riley">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step2b-select-pom-simon-riley</a>
**New page in this journey**

#### Main features

* Only show details for the currently allocated POM as per in the prototype if they are selected on the previous page

### Confirm allocation 

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step3b-validate-allocation-simon-riley">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/reallocate/step3b-validate-allocation-simon-riley</a>
**New page**

#### Main features

* Choosing continue effectively exits the journey back to the See allocations page with the message in the prototype – no email should be sent to the POM 

## Co-working POM allocation 

The “Primary POM” text should be displayed under each heading in the journey.

### Review case details

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/review-case">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/review-case</a>
**New page**

* Primary POM details should be shown as per the prototype
* Text of calls to actions on this page is also different to the main allocations journey 

### Allocate a co-working POM

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/select-pom">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/select-pom</a>
**Replaces this page in the live service:** <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/coworking/A8827DY/new">https://dev.moic.service.justice.gov.uk/prisons/LEI/coworking/A8827DY/new</a>

#### Main features

* Primary POM should be highlighted here as shown in the prototype. If the primary POM has also previously worked with the prisoner, we should show their name in the the Previously allocated section.

### Compare co-working POMs

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/compare-pom">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/compare-pom</a>
**New page**

#### Main features

* Highlight the Primary POM on the card with the allocate button disabled if the primary POM has been selected on the previous screen.

### Check co-working allocation details

**Prototype link:** <a href="https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/confirm-allocation">https://hmpps-moic-prototype.apps.live.cloud-platform.service.justice.gov.uk/allocations/final/coworking/confirm-allocation</a>
**Replaces this page in the live service:** <a href="https://dev.moic.service.justice.gov.uk/prisons/LEI/coworking/confirm/G8859UP/486154/485982">https://dev.moic.service.justice.gov.uk/prisons/LEI/coworking/confirm/G8859UP/486154/485982</a>

#### Main features

* Add details of primary and co-working POM as per prototype
