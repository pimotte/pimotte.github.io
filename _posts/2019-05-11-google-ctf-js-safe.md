---
layout: post
title: "Google Capture The Flag: JS safe"
---

In this challenge, you are invited to break "the leading localStorage based safe solution with advanced obfuscation technology".
A JavaScript safe. First order of business: Try a simple password. Bright red letters `Access Denied` is the reply.
Next step is inspecting the source code. First thing to notice is the line `password = /^CTF{([0-9a-zA-Z_@!?-]+)}$/.exec(keyhole.value);`. This suggests that the password must be of the form `CTF{...}`. So, the password is the flag.

Furthermore, there is a secret, and an algorithm specification containing the string `'AES-CBC'`. So, if we find the password,
we can open the safe and decrypt the secret. Breaking AES seems an unlikely angle, so there has to be another way to obtain
the password. Luckily, there is a function `x`, which starts with te comment `// TODO: check if they can just use Google to get the password once they understand how this works.`. 

So lets figure out what it does. It is called before decrypting, and if it returns true, the actual decryption is attempted. So that means that any valid password, should cause this mysterious function `x` to return true. There is an object, containing 'a' through 'h' as keys. The result of the function is the negation of 'h', and the function itself loops over the code. Every four characters of the code represent an instruction. 




