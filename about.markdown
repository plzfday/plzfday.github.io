---
lang: en
layout: page
title: About
permalink: /about/
description: "Dongyeon: software engineer building cybersecurity testing software for cars. Weekend car fixes, sim racing, F1, and Japanese on the side."
---

<style>
  .about-intro {
    margin: 0 0 40px;
    font-size: 1.05rem;
  }
  .about-facts {
    display: grid;
    grid-template-columns: 7rem minmax(0, 1fr);
    margin: 0;
  }
  .about-facts dt,
  .about-facts dd {
    padding: 20px 0;
    border-top: 1px solid var(--line);
  }
  .about-facts dt {
    padding-right: 24px;
    color: var(--muted);
    font-size: 0.85rem;
    letter-spacing: 0.04em;
    text-transform: uppercase;
    line-height: 1.9;
  }
  .about-facts dd {
    margin: 0;
  }
  .about-facts dd p {
    margin: 0;
  }
  .about-facts dd p + p {
    margin-top: 4px;
  }
  .about-facts ul {
    margin: 0;
    padding-left: 1.1em;
  }
  .about-facts li + li {
    margin-top: 6px;
  }
  .about-facts .note {
    color: var(--muted);
    font-size: 0.9rem;
  }
  @media (max-width: 640px) {
    .about-facts {
      grid-template-columns: minmax(0, 1fr);
    }
    .about-facts dt {
      padding-bottom: 0;
    }
    .about-facts dd {
      padding-top: 4px;
      border-top: 0;
    }
  }
</style>

<p class="page-lede">I write software for cars by day, and fix my own on weekends.</p>

<p class="about-intro">I'm Dongyeon, a software engineer in South Korea. At work, I build a cybersecurity testing platform that helps automakers meet regulations like UN R155 and R156. Outside of it, I'm drawn to the layer below the code: hardware, and lately, the cars themselves.</p>

<dl class="about-facts">
  <dt>Now</dt>
  <dd>
    <ul>
      <li>Fixing my own car, and buying tools I didn't know existed.</li>
      <li>Sim racing in Assetto Corsa Competizione on a Moza R5, and following F1 every race weekend.</li>
      <li>Learning Japanese.</li>
    </ul>
    <p class="note">Updated November 2026.</p>
  </dd>

  <dt>Start here</dt>
  <dd>
    <ul>
      <li><a href="{% post_url 2026-03-31-prefer-hwpx-over-hwp %}" lang="ko">Hwp 싫어요. Hwpx 좋아요</a>: reverse-engineering HWP by diffing sample files, and why HWPX is the way out.</li>
      <li><a href="{% post_url 2026-11-08-domain-for-85-cents %}" lang="ko">도메인을 연 $0.85에 구매했다</a>: the cheapest domain I could find, and why it's this blog's address.</li>
      <li><a href="{% post_url 2026-08-04-completing-military-service %}" lang="ko">23개월의 산업기능요원 복무를 마치며</a>: what 23 months of alternative military service taught me about people.</li>
    </ul>
    <p class="note">Most posts are in Korean. <a href="{{ '/archive/' | relative_url }}">All posts →</a></p>
  </dd>

  <dt>Opinions</dt>
  <dd>
    <ul>
      <li>Opinionated tools save teams from arguing. <a href="{% post_url 2025-11-30-lets-use-opinionated-tools %}">Why →</a></li>
      <li>Coding agents work like a third-year developer: great when you steer, chaos when you don't. <a href="{% post_url 2026-03-26-coding-life-with-codex-and-claude-code %}">Why →</a></li>
      <li>Say what you think, and be ready to change your mind.</li>
    </ul>
  </dd>

  <dt>Building</dt>
  <dd>
    <p>Small apps for things that bother me. <a href="{{ '/projects/' | relative_url }}">See the projects →</a></p>
  </dd>

  <dt>Follow</dt>
  <dd>
    <p><a href="{{ '/feed.xml' | relative_url }}">RSS</a> · <a href="https://github.com/{{ site.github_username }}">GitHub</a> · <a href="https://www.linkedin.com/in/{{ site.linkedin_username }}">LinkedIn</a> · <a class="js-email" data-user="dongyeonpark01" data-domain="gmail.com" href="https://www.linkedin.com/in/{{ site.linkedin_username }}">Email</a></p>
    <p class="note">My career history lives on LinkedIn.</p>
  </dd>
</dl>

<script>
  document.querySelectorAll(".js-email").forEach(function (link) {
    link.href = "mailto:" + link.dataset.user + "@" + link.dataset.domain;
  });
</script>
