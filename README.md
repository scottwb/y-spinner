YSpinner is a simple CoffeeScript class with static methods for turning any DOM element into a spinner by rotating it on its Y-axis until you stop it.

Requires jQuery.

_Copyright &copy; 2014 Scott W. Bradley - Licensed under the MIT License_

## Examples:

### Using your logo image as a spinner (from CoffeeScript)

```coffee
logo = $(img.logo)
YSpinner.start(logo)
# ... time passes ...
YSpinner.stop(logo)
```
