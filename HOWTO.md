## How to Add Content and Deploy this Site?

This site is built as a static site using [gohugo](https://gohugo.io/) and is hosted on GitHub pages. 

The source code for the site is located in this repository: [https://github.com/bcdataca/bcdata-source](https://github.com/bcdataca/bcdata-source)

From the top level directory of that site, you can run the site locally by running 

```
hugo server
```
and then look at the appropriate localhost port.

If you run 
```
hugo
```
the static site will be generated and dumpted into `public/`.

The deployed version of this site is located in this repository: [https://github.com/bcdataca/bcdata-deployed](https://github.com/bcdataca/bcdata-deployed)

The deployed repository is the output appearing inside `public/` after running the hugo command. I have used `git push --force` to violently step on previous incarnations of the site.


The `gh-pages` branch of the deployed repository is configured to appear, via github pages hosting, at the location [http://bcdata.ca](http://bcdata.ca).
