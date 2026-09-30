---
layout: post
title: Herdr 사용 후기
date: 2026-09-30
categories: review
---
다들 그렇겠지만 요즘엔 codex나 claude code 같은 AI agent를 사용하는게 기본이 되어버렸다. 처음엔 GUI를 사용하다가 SSH를 통해 모바일에서 일 시키는 등 작업을 편하게 하기 위해서 tmux + Codex CLI 조합을 사용하고 있었다. tmux가 메모리를 적게 먹는 것은 매우 좋지만 사용성이 너무 안 좋았다. pane의 크기를 바꿀 때마다 스크롤이 쭉 되는 걸 봐야 한다든가, 여러 agent를 병렬로 실행시키고 답변을 기다리고 있을 때 어느 쪽에서 답변이 끝났는지 내가 일일이 확인해야 하는 등 agent 사용을 위해 만들어진 도구는 아니다보니 UI/UX가 적절하지 못했다.

이러한 불편함을 느끼고 나는 tmux를 좀 더 편하게 사용하기 위해 tmux package manager (tpm)도 설치해서 사용했었다. 하지만 vim처럼 내가 일일이 확인해가면서 설치해야 하는 불편함을 나는 견딜 수 없었다. 전에 [opinionated tools를 사용하자고 했던 포스트](https://plzfday.github.io/opinion/lets-use-opinionated-tools)의 내용처럼 난 다른 똑똑한, 섬세한 사람이 "이런 워크플로우에는 이렇게 사용해~"라는 식의 opinionated tool를 선호한다.

더욱이 windows에서는 tmux가 없기 때문에 psmux를 써야 했고 MacOS, Linux에서는 tmux를 쓰는 크로스플랫폼이지 않은 셋업 환경도 맘에 들지 않았다.

더 깊어진 불편함을 해결하기 위해 ChatGPT xhigh를 가지고 열심히 찾아본 결과 Herdr라는 발음하기 힘든 프로그램이 있었고 이 프로그램이 최근 일주일 간의 나의 개발 워크플로우를 완벽하게 개선시켜줬다. 기존 tmux와 같은 키보드 단축키 지원, AI agent 사용에 딱 맞춘 UI/UX, 기본 마우스 모드 지원 등 너무 맘에 드는 기능이 많다. Tmux만큼은 아니지만 Rust로 만들어서 그런지 resource efficient한 편이라고 생각한다.
최근 개발 생태계가 정말 빠르게 변하는만큼 이 도구를 얼마나 오래 쓸 지는 장담할 수 없다. 하지만 현재로써는 너무나도 다른 사람에게도 추천하고 싶은 도구이다.