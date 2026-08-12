# homebrew-tap

Homebrew formulae for my terminal tools.

```sh
brew install jhickner/tap/web
```

| Formula | What it is |
|---|---|
| [`web`](Formula/web.rb) | [Chrome in your terminal](https://github.com/jhickner/web) — a live browser window with tabs, hint links and scripting |

`brew install --HEAD jhickner/tap/web` builds the current master instead of the
release.

## Releasing

Tagging `vN.N.N` in the source repo bumps the formula here — the `homebrew`
workflow there rewrites the `url` and `sha256` and pushes. By hand it is:

```sh
curl -sL https://github.com/jhickner/web/archive/refs/tags/v0.1.1.tar.gz | shasum -a 256
```
