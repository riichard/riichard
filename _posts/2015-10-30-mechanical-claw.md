---
layout: post
title: Remote controlled mechanical claw
thumbnail: /images/claw.gif
date: 2015-10-30 08:00:00
tags: [ hardware, javascript, arduino, hobbyproject ]

---

A while ago I had this hobby project where we ordered a mechanical claw from ebay and
connected it to an Arduino to control it via websockets.
This in the end would allow a webcam to be connected, and make the claw to be
remotely controlled, with multiple cameras in the front, top of the claw and
sideways for a unique perspective.

<div class="row">
    <video loop controls height="500" class="col-md-12">
        <source src="/static/claw/arduino.mp4" type="video/mp4">
    </video>
</div>

### The hardware

The Arduino was connected to some relais, which were connected to the engines
in the mechanical claw. You can use the arrow keys to move the thing around.

On the claw were some switches activating an electric current. These could be
used to detect whether:

There is load on the claw (if you reach the bottom, the claw becomes
weightless).
- Whether you reached the top of the wire.
- Reaching the end of the YZ axis.

<div class="row">
    <video loop controls height="500" class="col-md-12">
        <source src="/static/claw/hamster.mp4" type="video/mp4">
    </video>
</div>

### Source code

I've published the sourcecode for this project on Github. It's written with
NodeJS using the [johnny-five library] to run in a browser or to control the machine from a
different computer. And uses a websockets protocol in order to have direct response on the machine,
and binds the keyboard arrow keys keyup/keydown to toggle power activation.

Watch the source code here: https://github.com/riichard/claw

[johnny-five library]: https://github.com/rwaldron/johnny-five

### Final results
Due to too much lack of my expertise, I never got to the end goal of setting up the website with a webcam livestream and remote controlled keyboard.
It did work like a champ via a 3rd party streaming service such as Skype or
Google Hangouts and was fun to have friends play around with it like that..
