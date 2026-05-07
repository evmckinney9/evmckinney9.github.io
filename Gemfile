source "https://rubygems.org"

# https://pages.github.com/versions/ tracks the supported gem set on GitHub Pages.
gem "github-pages", "~> 232", group: :jekyll_plugins
gem "jekyll-theme-minimal"
gem "jekyll-seo-tag"

# Ruby 3.4 dropped these from stdlib.
gem "csv"
gem "logger"
gem "base64"
gem "bigdecimal"

# Windows / JRuby do not ship zoneinfo.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]
gem "webrick", "~> 1.8"
