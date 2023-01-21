[![Netlify Status](https://api.netlify.com/api/v1/badges/8fd7da5f-0c4d-4a43-9e23-2d1baf0d35cc/deploy-status)](https://app.netlify.com/sites/hugo-novela-forestry/deploys)

# Hugo Novela Forestry Starter

A port of [Narative](https://www.narative.co/)'s Gatsby theme [Novela](https://www.narative.co/labs/novela/)

![](images/tn.png)

<a href="https://app.forestry.io/quick-start?repo=forestryio/novela-hugo-starter&engine=hugo&version=0.80.0">
    <img alt="Import this project into Forestry" src="https://assets.forestry.io/import-to-forestryK.svg" />
</a>

### Prerequisites

This starter is importing the theme as a [Hugo Module](https://gohugo.io/hugo-modules/)

- Docker (20.10.7)

## Content Management

![Forestry user interface](images/novela-forestry.png)

This starter is ready to be imported into [Forestry](https://forestry.io)  ✨.

Any changes you save in the CMS will be commited back to your Git repository.

## Deploy

Commit to GitHubs master branch. Results will be visible at: https://unitedlambdas.github.io/

## Development

```bash
make serve
```

For more information, see [official Hugo documentation](https://gohugo.io/getting-started/).

## Customization

### Socials

In order for the Socials to be surfaced in Forestry, you should copy the theme's `config/_default/social.yaml` to your project.

### Authors

You should register authors as a taxonomy in your project's `config.yaml``

```yaml
taxonomies:
  author: authors
```

#### Creating authors

Add a similar file to your content directory and Front Matter example.

```yaml
# /content/authors/firstname-lastname/_index.md
---
title: Dennis Brotzky
bio: |
  Written by You. This is where your author bio lives. Share your work, your
  joys and of course, your Twitter handle.
avatar: /images/dennis-brotzky.jpg
featured: true
social:
  - title: github
    url: https://github.com
  - title: twitter
    url: https://twitter.com
  - title: instagram
    url: https://instagram.com
  - title: dribbble
    url: https://dribbble.com
  - title: unsplash
    url: https://unsplash.com
---
```

#### Assigning authors to posts.

Add the name of the author to the "authors" field:

```yaml
authors:
  - Dennis Brotzky
  - Thiago Costa
```
### Newsletter call to action

This theme includes a shortcode for a newsletter callout form that you can add to any page.
It uses [formspree.io](//formspree.io/) as proxy to send the actual email. Each month, visitors can send you up to one thousand emails without incurring extra charges. Visit the Formspree site to get get going add your Formspree email to your shortcode like this:

```
{{< subscribe email="your@email.com" >}}
```


## LICENSE

MIT
