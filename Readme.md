# Middleman Pinterest Blog layout
A Middleman 4 template with a responsive Pinterest-style masonry layout built with Semantic UI.

Demo available at [https://middleman-pinterest-blog-template.netlify.com/](https://middleman-pinterest-blog-template.netlify.com/)

## Getting Started
1. Clone the project `git clone https://github.com/james-weaver/middleman-pinterest-blog-template YOUR_PROJECT_NAME`
2. Install dependencies `cd YOUR_PROJECT_NAME` then `bundle install`
3. Start Middleman `bundle exec middleman s`

## Creating a new post

Posts are stored in `source/posts/<year>/<month>/` in the format `<day>-<title>.html.md`

e.g a post for January 7th 2016 about middleman would look like this:

`source/posts/2016/01/07-middleman.html.md`

### Post metadata
Post front matter data is required at the top of each post. There are two post formats, an image post and a video post.



#### A post with an image

```
---
title: Quisque quis faucibus arcu
image: https://unsplash.it/500/427
date: 2016-09-23 00:00 UTC
tags: news
author: Joe
---
```

#### A post with a video
```
---
title: Morbi vestibulum eleifend justo ut
video: https://www.youtube.com/embed/WVPRkcczXCY
videoplaceholder: https://unsplash.it/500/325
date: 2016-09-10 00:00 UTC
tags: news, events
author: Joe
---
```
Video posts use Semantic UI `embed` ([Docs](http://semantic-ui.com/modules/embed.html)).
## Configuration

### CSS Modules

middleman-pinterest-blog-template includes the default Semantic UI theme. You can edit which modules to include by commenting out the relevant lines in `source/stylesheets/semantic-ui/semantic-ui.scss`.

### JavaScript

middleman-pinterest-blog-template includes jQuery 2.2.2 and its default JavaScript modules. You can comment out the modules you don't require in `source/javascripts/vendor/semantic-ui.js`
