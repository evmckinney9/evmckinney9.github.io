# evmckinney9.github.io

Source for [evm9.dev](https://evm9.dev) — my personal homepage. Jekyll site built on the
[Minimal](https://github.com/orderedlist/minimal) theme and served from GitHub Pages.

The page content lives in `_data/`:

- `about.yml` — bio, profile picture, social links
- `publications.yml` — papers, with optional `pdf`, `arxiv`, `slides`, `poster`, `github`, `video`
- `teaching.yml` — courses by role and term

Layout and partials are in `_layouts/` and `_includes/`. Static assets (images, PDFs, CSS) go
under `assets/`.

## Local development

Requires Ruby 3.3 (see `.ruby-version`). One-time system setup on Debian/Ubuntu:

```bash
sudo apt-get install -y ruby-dev build-essential
gem install --user-install bundler
echo 'export PATH="$HOME/.local/share/gem/ruby/$(ruby -e "puts RUBY_VERSION.split(\".\")[0..1].join(\".\")").0/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Then in this repo:

```bash
make install   # bundle install
make serve     # bundle exec jekyll serve --livereload
```

Open <http://localhost:4000>.

Other targets:

```bash
make build     # production build into _site/
make update    # bump gems
make clean     # wipe _site and caches
```

## Deployment

Pushes to `main` trigger `.github/workflows/jekyll.yml`, which builds the site and deploys via
the GitHub Pages action. PRs run the build only.
