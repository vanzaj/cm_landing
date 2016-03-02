Classmentors static pages
=========================

Simple setup to manage static pages for classmentors.com. Html is generated
using [jade](http://jade-lang.com/) templating and styling is done with
customized [yeti.css](http://yeticss.com) which uses
[stylus](http://stylus-lang.com/). Minified yeti is ~ 20kb.

Customization of yeti.css is mainly shortening of class names like `.btn`
instead of `.button` and `.gf-` instead of `.grid-flex-`, plus renaming of
some grid related classes: `.grid-container` became `.gf-row` and
`.grid-cell-1of{2,3,4}` became `.w50, .w33, .w25`.


Dev setup
---------

    git clone <repo>
    npm install
    make html
