# A simple CoffeeScript class with static methods for turning any
# DOM element into a spinner by rotating it in the Y-axis until you stop it.
#
# Requires jQuery.
#
# @example Using your logo image as a spinner
#   logo = $('img.logo')
#   YSpinner.start(logo)
#   # ...time passes...
#   YSpinner.stop(logo)
#
# @version 1.0.0
# @copyright 2014 Scott W. Bradley - Licensed under the MIT License
#
class @YSpinner

  # Start the specified element infinitely 3D-spinning on its Y-axis.
  #
  # @param elem [jQUery] The jQuery element to use as a YSpinner
  #
  @start: (elem) ->
    YSpinner._rotateOnce elem, -> YSpinner.start elem

  # Stop the specified element from 3D-spinning on its Y-axis and
  # reset it to its 0-degree rotation.
  #
  # @param elem [jQuery] The jQuery element to stop spinning
  #
  @stop: (elem) ->
    elem.stop()
    YSpinner._setRotation elem, 0


  #-----------------------------------------------------------
  # Internal Methods
  #-----------------------------------------------------------

  # @nodoc
  @_rotateOnce: (elem, onComplete) ->
    elem.css 'rotationIndex', 0
    elem.animate(
      {rotationIndex: 360},
      {
        step: (now,fx) -> YSpinner._setRotation elem, now
        duration: 'slow'
        easing: 'linear'
        complete: onComplete
      }
    )

  # @nodoc
  @_setRotation: (elem, degrees) ->
    rotation = "rotateY(#{degrees}deg)"
    elem.css
      '-webkit-transform': rotation
      '-moz-transform': rotation
      '-ms-transform': rotation
      '-o-transform': rotation
      'transform': rotation
