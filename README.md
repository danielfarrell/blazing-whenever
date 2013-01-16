Blazing Whenever
===============

Whenever recipes for [blazing](http://github.com/effkay/blazing)

Installation
------------

Add `gem 'blazing-whenever'` to your `Gemfile`

Usage
-----

Enable the recipes you want in your blazing configuration file. Options
can be provided in the recipe call or with the target method. Target
options have precedence over recipe options.

```ruby
# Update the crontab
#
#   recipe :update_crontab, [options]
#
# Options:
#
#   :app (specify the app name, defaults to pwd name)
#   :targets (specify the targets this recipes runs on, can be array)
#
# Example:

recipe :update_crontab, :targets => :production
```

Authors
-------

Daniel Farrell ([@danielfarrell][])

License
-------

See the [MIT-LICENSE file](https://github.com/danielfarrell/blazing-whenever/blob/master/MIT-LICENSE)

[@danielfarrell]: https://github.com/danielfarrell
