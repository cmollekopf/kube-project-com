# Kube Website

This is the website for the kube project.
It's based on jekyll and has the following dependencies (installed with "gem install"):
* jemoji
* bundler
* jekyll-feed
* jekyll-seo-tag
* jekyll-sitemap

# Building the website

Use 'jekyll build'. This will generate the site in _site/, which is the content that needs to be comitted and pushed to the repo so the webserver can serve it.

The website can be tested locally with 'jekyll serve'. Note that this will alter the _site/ content with urls adjusted to localhost, so don't push the result of that. Always use 'jekyll build' before pushing.

# Updating the CSS

Do not touch css directly. All CSS is generated using sass. Colors can e.g. be modified in assets/sass/libs/_vars.scss, to regenerate run "sass assets/sass/main.scss:assets/css/main.css" the root directory.


# Forty - Jekyll Theme

A Jekyll version of the "Forty" theme by [HTML5 UP](https://html5up.net/).

![Forty Theme](assets/images/forty.jpg "Forty Theme")

## Theme features

* Spotlight: Picture on one side and text on the other. Altering side with multiple spotlights.
* Tiles: With hover effect, background image, and optionally clickable.

# How to Use

For those unfamiliar with how Jekyll works, check out [https://jekyllrb.com/](https://jekyllrb.com/) for all the details,
or read up on just the basics of [front matter](https://jekyllrb.com/docs/frontmatter/), [writing posts](https://jekyllrb.com/docs/posts/),
and [creating pages](https://jekyllrb.com/docs/pages/).

- **GitLab**: Simply fork this repository and start editing the `_config.yml` file!
- **GitHub**: Fork this reposity and create a branch named `gh-pages`, then start editing the `_config.yml` file! The `.gitlab-ci.yml` file is only needed for GitLab Pages, so feel free to delete this if you are using GitHub instead.

# Added Features

* **[Formspree.io](https://formspree.io/) contact form integration** - just add your email to the `_config.yml` and it works!
* Use `_config.yml` to **set whether the homepage tiles should pull pages or posts**, as well as how many to display.
* Add your **social profiles** easily in `_config.yml`. Only social profiles buttons you enter in `config.yml` show up on the site footer!
* **Automatic sitemap generation** via the [Jekyll Sitemap Generator](https://github.com/jekyll/jekyll-sitemap) plugin.
* **Automatic RSS/Atom feed generation** via the [Jekyll Feed](https://github.com/jekyll/jekyll-feed) plugin.
* **Automatic SEO** via the [Jekyll SEO Tag](https://github.com/jekyll/jekyll-seo-tag) plugin.
* :thumbsup: **Emoji** support via the [Jemoji](https://github.com/jekyll/jemoji) plugin.
* Set **featured images** in front matter.

# Credits

Original README from HTML5 UP:

```
Forty by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


This is Forty, my latest and greatest addition to HTML5 UP and, per its incredibly
creative name, my 40th (woohoo)! It's built around a grid of "image tiles" that are
set up to smoothly transition to secondary landing pages (for which a separate page
template is provided), and includes a number of neat effects (check out the menu!),
extra features, and all the usual stuff you'd expect. Hope you dig it!

Demo images* courtesy of Unsplash, a radtastic collection of CC0 (public domain) images
you can use for pretty much whatever.

(* = not included)

AJ
aj@lkn.io | @ajlkn


Credits:

    Demo Images:
        Unsplash (unsplash.com)

    Icons:
        Font Awesome (fortawesome.github.com/Font-Awesome)

    Other:
        jQuery (jquery.com)
        html5shiv.js (@afarkas @jdalton @jon_neal @rem)
        background-size polyfill (github.com/louisremi)
        Misc. Sass functions (@HugoGiraudel)
        Respond.js (j.mp/respondjs)
        Skel (skel.io)
```

Repository [Jekyll logo](https://github.com/jekyll/brand) icon licensed under a [Creative Commons Attribution 4.0 International License](http://choosealicense.com/licenses/cc-by-4.0/).
