## Getting started

``` shell
git clone https://github.com/heroku/list-of-ingredients.git
cd list-of-ingredients
bundle
yarn --cwd client install
bin/rake db:migrate db:seed start
```

Once you're ready to deploy to [Heroku](https://www.heroku.com), run:

``` shell
heroku apps:create
heroku buildpacks:add heroku/nodejs --index 1
heroku buildpacks:add heroku/ruby --index 2
git push heroku master
heroku run rake db:seed
heroku open
```

Or you can click this button to deploy straight to Heroku from this repository:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Success!

## Suggestions, problems, typos?

Get in touch by adding an [issue](https://github.com/heroku/list-of-ingredients/issues).
