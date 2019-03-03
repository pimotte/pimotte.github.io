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

My next move was to make a hex-dump of the file, with the command `xxd foo.ico` Two sections caught my eye:

{% highlight hexdump %}
000003d0: 0000 e100 0000 0700 1c00 7777 772e 636f  ..........www.co
000003e0: 6d55 5409 0003 c102 2d5b db03 2d5b 7578  mUT.....-[..-[ux
{% endhighlight %}

{% highlight hexdump %}
00000500: 0064 7269 7665 722e 7478 7455 5405 0003  .driver.txtUT...
{% endhighlight %}

These contain the strings `www.com` and `driver.txt`. This suggests that
there is something hidden in the data. So lets try to figure out the actual binary data.
We opened the icon with GIMP, so lets verify if it is indeed an `.ico` file.

```
[pim@desktop-pim second-middle]$ file foo.ico
foo.ico: MS Windows icon resource - 1 icon, 32x32, 16 colors
```

Turns out it is. So what is a `.ico` file anyway? [Wikipedia](https://en.wikipedia.org/wiki/ICO_(file_format)#Icon_resource_structure)
has a basic reference for the file format. Its a container format that can contain multiple icons. So I went and disected the header.
Note that `.ico` has little-endian values, which throw off some of the conversion. I adjusted as it made sense, only for the size
I am still not quite sure what number it actually represents.


```
00000000: 0000 0100  .... ico file marker
00000004: 0100 2020  ...  1 file, with size 32x32
00000008: 1000 0000  .... 16 colour pallette
0000000c: 0000 e802  .... 208e is the size of the first chunk
00000010: 0000 1600  .... 1600 is an offset of 22 bytes for BMP or PNG data
00000014: 0000 2800  ..(
00000018: 0000 2000  .. .
```

So at this point I figured: If I'm trying to extract the image data, someone else will have done that for me. My search for ico to png led
me to [this conversion site](https://www.aconvert.com/image/ico-to-png/). I downloaded the resulting .png file and
analyzed it using a tool called `pngcheck`. However, nothing odd showed up at this point, and a hex dump of the png file no longer
contained the strings that were problematic. So I went and tried to extract the same data manually. We figured out that
there was an offset of 22 bytes for the first, and only picture. So lets cut those off:

```
[pim@desktop-pim second-middle]$ dd if=foo.ico of=foo.ico.noheader bs=1 skip=22
```

And verify that it is a `.png` file:

```
[pim@desktop-pim second-middle]$ file foo.ico.noheader
foo.ico.noheader: Zip archive data
```

Wait, what?

```
[pim@desktop-pim second-middle]$ unzip foo.ico.noheader
Archive:  foo.ico.noheader
warning [foo.ico.noheader]:  743 extra bytes at beginning or within zipfile
  (attempting to process anyway)
  inflating: driver.txt
  inflating: www.com
```

The driver.txt file contains the flag! I did not end up figuring out what exactly is the deal with
the `.ico` file. It turns out that unzipping the original `foo.ico` file also does the trick.
The file is actually both a `.ico` and `.zip` file, taking advantage of the slack in both formats,
as both have a header of sorts with offsets for the actual data, but in the case of `.ico` this
header is at the front, whereas for `.zip` it is at the back. When I truncated the `.ico` header,
this lead the `file` utility to check out the last part of the file, and conclude that it is a `.zip`-file.
