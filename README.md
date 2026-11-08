# Plzfday's blog

## How to run the test server

```
bundle exec jekyll serve
```

## Images

Add photos with the script. It resizes to 1600px, converts to sRGB JPEG,
strips all metadata (including GPS), saves to `assets/images/<post-slug>/`,
and prints the markdown to paste:

```
scripts/add_image <post-slug> ~/Desktop/IMG_1234.HEIC
```

```md
![Alt text]({{ site.image_base }}/<post-slug>/img-1234.jpg)
```

A pre-commit hook rejects images over 1 MB and raw HEIC files. Enable it once per clone:

```
git config core.hooksPath .githooks
```

`image_base` in [`_config.yml`](./_config.yml) points at `/assets/images`. To move images to another host later, change that one value.

## Fonts

Pretendard is subset to the characters the site uses. After a post with rare characters, run `scripts/subset_fonts`.
