# Middleman Pinterest Blog layout
A Middleman 4 template with a responsive Pinterest-style masonry layout built with Semantic UI.

Demo available at [https://middleman-pinterest-blog-template.netlify.com/](https://middleman-pinterest-blog-template.netlify.com/)

## Creating a blog post

Posts are stored in `source/posts/<year>/<month>/` in the format `<day>-<title>.html.md`

e.g a post for January 7th 2016 about middleman would look like this:

`source/posts/2016/01/07-middleman.html.md`


## Getting Started
1. Clone the project `git clone https://github.com/james-weaver/middleman-pinterest-blog-template YOUR_PROJECT_NAME`
2. Install dependencies `cd YOUR_PROJECT_NAME` then `bundle install`
3. Start Middleman `bundle exec middleman s`

## Configuration

### CSS Modules

middleman-pinterest-blog-template includes the default Semantic UI theme. You can edit which modules to include by commenting out the relevant lines in source/stylesheets/semantic-ui/semantic-ui.scss.

### JavaScript

middleman-pinterest-blog-template includes jQuery 2.2.2 and the default JavaScript modules. You can comment out the modules you don't require by editing source/javascripts/vendor/semantic-ui.js
