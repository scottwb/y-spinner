# YSpinner

YSpinner is a simple CoffeeScript class with static methods for turning any DOM element into a spinner by rotating it on its Y-axis until you stop it.

Requires jQuery.

## Installation
Drop `y_spinner.js.coffee` into your Rails `app/assets/javascripts` if you are using Rails and its Asset Pipeline. Otherwise, compile it using `coffee` and source it into your page.

## Usage

An example using your logo image as a spinner (from CoffeeScript):

```coffee
logo = $(img.logo)
YSpinner.start(logo)
# ... time passes ...
YSpinner.stop(logo)
```

## Author

Scott W. Bradley - [http://scottwb.com](http://scottwb.com)

## Contributing

* Fork the project.
* Make your feature addtion or bug fix.
* Add test for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history. (If you want to have your own version, that is fine, but bump version in a separate commit by itself so I can ignore it when I pull).
* Send me a pull request. Bonus points for topic branches.

# License

This code is licensed under the [MIT License](https://github.com/scottwb/y-spinner/LICENSE.md).
