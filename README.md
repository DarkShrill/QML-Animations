# QML-Animations
This QML project is an example of how to create custom animations using the functionality provided by the QtQuick library. The GUI consists of two colored rectangles that are animated in a coordinated manner through the use of custom properties and behaviors.
***
![Made with love in Italy](https://madewithlove.now.sh/it?heart=true&colorA=%234d3c6f&template=for-the-badge)

## Code Description
The code begins by importing several libraries needed to create the GUI and animations. Next, the main window is defined using the Window element. The window is visible, has a width equal to a quarter of the width of the screen and a height equal to half the height of the screen. The title of the window is "QML Animations."

A custom completed property is then defined that indicates whether the animation has been completed or not.

Next, three rectangles are defined, each with a different color. The first two rectangles, rect_1 and rect_2, are animated through the use of custom properties that define the behavior of the element during the animation. In particular, three custom behaviors are defined for the width, y and color properties. Thus, during the animation, the width of the rectangles decreases by 20% in two seconds, the vertical position moves down in one second, and the color gradually changes in one second.

A RotationAnimator object is then defined for each of the first two rectangles, which defines a rotation animation for the two rectangles. The animation consists of a full 360-degree rotation in one second.

Finally, a Timer object is defined that performs a "pulse" animation of the rectangles every two seconds. During the animation, the properties of the first two rectangles are changed according to the state of the completed property. If completed is false, the width and position of the rectangle are changed and the rotation animation is executed. Otherwise, the properties of the rectangle are restored to their initial values and the animation is executed in the opposite direction.

Screenshots of the application

![Demo video](https://github.com/DarkShrill/QML-Animations/blob/master/stuff/animations-demo.mkv)
