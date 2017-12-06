--[[

Hints on solving day 3...

There is a mathematical way of solving it and a more "programming" way of solving it.

The mathematical way is, first, to realize that the bottom right corners are all (odd)^2 numbers.
Also, if you look at the memory, its creating somewhat a circle shape (its more a square but i'll use the circle terminology...).
With the first information I gave you, you should be able to find the diameter of each circle generated (they are getting bigger and bigger)
The Manhattan distance is gonna be the radius added to the amount of steps you need to take from an imaginary vertical or horizontal line
going through the "1" value.

The more "programming" way of solving it is just to recreate the whole memory 1 by 1 with a loop, and keeping track of the x,y coordinates,
and adding the x,y coordinates will give you your Manhattan distance (±a small integer depending on how you setup your coordinate system)

I hope this helps! (If you're really lazy you can go check my solution hahaha)

Good luck! :D

]]
