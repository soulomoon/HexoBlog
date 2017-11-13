---
title: Why-should-I-need-head-file
date: 2017-11-13 16:12:53
tags:
---
I have been wondering why the head file is needed on c programming.
Finnally get to know the reason behind now that I have learnt how linker works in C programming.

Let's do the reasonning backwards, if you don't have any head file, what should you do to 
use functions in others peoples libs in your code? Right, you have to announce it, so the have 
to declare the definition, and assumes that it would be include in your binary code in the link
time. So you have one definition in your code. Well, this is it, the head files.

On the other side of the game, you are the libs provider, what would you do the offers function
for the user? Well, you defines it in the head files, so that other people could include it.
TADA, this is head files again.

Since both sides need it, it might as well be one as a shared hearders in a dependent files.

