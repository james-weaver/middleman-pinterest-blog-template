###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }
page "/feed.xml", layout: false

activate :blog do |blog|

  # blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "posts/{year}/{month}/{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.layout = "single-post"
  blog.summary_separator = /(!READMORE)/
  # blog.summary_length = 250
  blog.year_link = "archive/{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".md"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 6
  # blog.page_link = "page/{num}"
end

###
# Helpers
###
helpers do
    def find_author(author)
      result = data.authors.select {|a| a.keys.first == author}
      raise ArgumentError unless result.any?
      result.first
    end
end

ignore 'single-post.html.haml'

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :sprockets

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
