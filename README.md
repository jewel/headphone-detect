Headphone Detect
================

This is a simple ruby program that reads from a video stream in linux and
detects whether or not each frame depicts my headphones, which are bright
green.  I have this reading from my webcam to mute and unmute the main
speakers, as well as start and stop my music.

<img src="images/with.jpg"/>


Dependencies
------------

What follows are instructions for Ubuntu, but they should be similar for other
platforms.

You'll need avconv, from the "libav-tools" package in apt.

You'll need ruby 1.9 and the RubyInline gem.
