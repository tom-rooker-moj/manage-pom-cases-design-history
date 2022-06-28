---
title: Initial appointment column iteration
description: Changes we made to the initial appointment column (previously induction appointment) based on user feedback.
date: 2022-06-01
---

## Induction appointment vs. initial appointment

From recent user research we have heard from participants that the term **induction appointment**, while understood, is not always factually correct when referring to the first appointment a practitioner will have with a person on probation. This is because the term 'induction' is referring to the induction pack, a document that is filled out with the person on probation.

While this document is usually completed in the first appointment, there are occasions where it might not be. For example, when someone turns up to their appointment in a state of crisis the practitioner may pivot the purpose of the session to best resolve the problems presented in the appointment.

The term that is most commonly used (and is the accepted term within nDelius) is **initial appointment** as this better describes the purpose of the appointment.

This change has also been reflected in the allocation email template on Notify.

| Version of protoype                                                                                              | Term used             |
| ---------------------------------------------------------------------------------------------------------------- | --------------------- |
| [V2 - V8](https://workforce-management.apps.live-1.cloud-platform.service.justice.gov.uk/v2/unallocated-cases)   | Induction date        |
| [V9](https://workforce-management.apps.live-1.cloud-platform.service.justice.gov.uk/v9/unallocated-cases)        | Initial appointment   |
| [V10](https://workforce-management.apps.live-1.cloud-platform.service.justice.gov.uk/v10/unallocated-cases)      | Induction appointment |
| [V12/MVP](https://workforce-management.apps.live-1.cloud-platform.service.justice.gov.uk/_mvp/unallocated-cases) | Initial appointment   |

## Changes to the initial appointment date column

Based on the insights from the user research above and testing with our Beta partners in Wrexham, we needed to make some changes to the initial appointment column in the unallocated cases screen within the allocations tool.

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Initial appointment - before',
  image: {
    file: '1-initial-appointment-before.png'
  }
}) }}

### Why is the initial appointment date column needed?

A senior probation practitioner prioritises cases to allocate by the date of their scheduled initial appointment, prioritising cases with initial appointments that have already happened or are happening soon, over those with initial appointments scheduled for a date that is further away. This is to ensure a person on probation has been allocated a probation practitioner in good time in preparation for managing their supervision. Sentence date alone cannot be relied upon to help prioritise allocations, as the initial appointment can take place any time within 5 working days of the day they were sentenced, which would influence the priority.

### User testing results on the original design

- **induction appointment** was an ambiguous column header which some users inferred as being the date the initial appointment was due, as opposed to when it would take place.
- it was suggested that the senior probation practitioner would not need to know the outcome of the initial appointment to be able to allocate the person on probation (and in most cases the initial appointment will take place after allocation).
- displaying the **not booked** status caused confusion with users as it implied that there was an action for them to complete. It was also found to be inaccurate in a lot of cases due to where in nDelius the information had been stored, causing stress to users who knew the information was incorrect.
- some users felt it was helpful to see when the induction was due so they could ensure they meet their SLA.
- all users interpreted the status **not needed, custody case** correctly and this was clearly understood.

### New design of the initial appointment date column

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Initial appointment - after',
  image: {
    file: '2-initial-appointment-after.png'
  }
}) }}

- the column header was changed to **Initial appointment date** to better follow the column naming conventions and clarify the meaning of the date content.
- the **not needed, custody case** status has remained the same except the colour indicator has been removed.
- additional statuses around if the appointment has been attended or when it is due to be booked have been removed.
- if a date for the initial appointment cannot be found, rather than displaying **not booked**, the user will be asked to check if the appointment has been booked with their team.

These changes will need to be tested in user research to understand if they are clearer to users.
