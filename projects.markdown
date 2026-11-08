---
lang: en
layout: page
title: Projects
permalink: /projects/
description: Things Dongyeon Park is building, and why.
---

<style>
  .project {
    padding: 32px 0;
    border-top: 1px solid var(--line);
  }
  .project:last-child {
    border-bottom: 1px solid var(--line);
  }
  .project-head {
    display: flex;
    align-items: center;
    gap: 14px;
  }
  .project-icon {
    width: 44px;
    height: 44px;
    border-radius: 10px;
    flex: none;
  }
  .project-name {
    margin: 0;
    font-size: 1.25rem;
    line-height: 1.3;
  }
  .project-name a {
    color: inherit;
    text-decoration: none;
  }
  .project-name a:hover {
    color: var(--link);
    text-decoration: underline;
  }
  .project-status {
    margin-left: auto;
    font-size: 0.8rem;
    color: var(--muted);
    letter-spacing: 0.04em;
    text-transform: uppercase;
  }
  .project-tagline {
    margin: 14px 0 0;
    font-size: 1.1rem;
  }
  .project-why {
    margin: 4px 0 0;
    color: var(--muted);
  }
</style>

<p class="page-lede">Small things I build because something bothered me.</p>

<section class="project">
  <div class="project-head">
    <img class="project-icon" src="{{ '/assets/projects/wardy-icon.png' | relative_url }}" alt="">
    <h2 class="project-name">Wardy</h2>
    <span class="project-status">Beta</span>
  </div>
  <p class="project-tagline">Your closet. Your device. Your cloud.</p>
  <p class="project-why">Wardrobe apps want your photos on their servers. This one doesn't.</p>
</section>

<section class="project">
  <div class="project-head">
    <img class="project-icon" src="{{ '/assets/projects/seaton-icon.png' | relative_url }}" alt="">
    <h2 class="project-name">자리온 <span style="font-weight:400;color:var(--muted)">Seat On</span></h2>
    <span class="project-status">Beta</span>
  </div>
  <p class="project-tagline">An empty priority seat, one tap away.</p>
  <p class="project-why">Passengers already on the train report an empty priority seat with one tap. Pregnant passengers waiting further down the line can see which carriage to wait for.</p>
</section>

<section class="project">
  <div class="project-head">
    <h2 class="project-name"><a href="https://github.com/plzfday/project625">Enhancing Fourier Neural Operator ↗</a></h2>
    <span class="project-status">Done</span>
  </div>
  <p class="project-why">Undergraduate final-year project. Experiments on variable modes and positional encoding.</p>
</section>
