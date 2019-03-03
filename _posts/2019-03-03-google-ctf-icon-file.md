---
layout: post
title: "Google CTF beginners quest: .ico file"
---

While I looked at all the possible paths from the first challenge, this was the
first in which I succeeded. The challenge revolves around foo.ico, an icon depicting
what I think is quite an old version of Borland.

I started by opening the file with GIMP and zooming in. The initial thing I noticed
was some odd discoloration here and there. There was a pattern of a couple dots in
a rectangular shape that reminded me of a QR-code, so I tried to scan it. Then I
tried converting it to greyscale and scanning it. To no avail. Then I realized
what kind of challenge this was, which made me think I was barking up the wrong tree.

My next move was to make a hex-dump of the file. Two sections caught my eye:

{% highlight hexdump %}
000003c0: 1400 0000 0800 0181 d64c e685 8466 d600  .........L...f..
000003d0: 0000 e100 0000 0700 1c00 7777 772e 636f  ..........www.co
000003e0: 6d55 5409 0003 c102 2d5b db03 2d5b 7578  mUT.....-[..-[ux
000003f0: 0b00 0104 4f9a 0100 0453 5f01 003d cad1  ....O....S_..=..
{% endhighlight %}

{% highlight hexdump %}
000004f0: 0018 0000 0000 0001 0000 00a4 8100 0000  ................
00000500: 0064 7269 7665 722e 7478 7455 5405 0003  .driver.txtUT...
00000510: ca03 2d5b 7578 0b00 0104 4f9a 0100 0453  ..-[ux....O....S
{% endhighlight %}

These contain the strings 

