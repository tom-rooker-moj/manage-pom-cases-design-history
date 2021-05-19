---
tags: false
layout: collection
title: POM handover
description:
pagination:
  data: collections.pom-handover
  reverse: true
  size: 50
permalink: "pom-handover/{% if pagination.pageNumber > 0 %}page/{{ pagination.pageNumber + 1 }}{% endif %}/"
eleventyComputed:
  eleventyNavigation:
    key: "{{ title }}"
    excerpt: "{{ description }}"
    parent: home
---