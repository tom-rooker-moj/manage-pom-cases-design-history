---
tags: false
layout: collection
title: HOMD handover
description:
pagination:
  data: collections.homd-handover
  reverse: true
  size: 50
permalink: "homd-handover/{% if pagination.pageNumber > 0 %}page/{{ pagination.pageNumber + 1 }}{% endif %}/"
eleventyComputed:
  eleventyNavigation:
    key: "{{ title }}"
    excerpt: "{{ description }}"
    parent: home
---