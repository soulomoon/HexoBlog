---
title: Link-in-C
date: 2017-11-14 15:13:56
tags:
---
How do linker work have always been one of the problem I do not understand.i  
Linking is a way of sharing the code as lib in C. Involving a great deal in  
the compiling and runtime of C.  
There are three different places where linking happens in C.  
*1 compile time  
*2 loadtime  
*3 runtime 
  
First smooth the process how do main.c code get run in your computer.  
1 include all that there are in the header it # `define`  
`cpp + main.c => main.i`  
2 compile to a assembly language.  
`cc1 + main.i => main.s`  
3 complie to relocatable object file.  
`as + main.s => main.o`  
4 compile time linker   
`ld + main.o + xxx.o => executable`  
5 loadtime and runtime linker  
`./executable + xxx.so`  
  
Static linking(Compile time linking):  
It copy static lib `xxx.a` with `main.o` and change ELF header accordingly.  
Dynamic linking(Loadtime runtime linking):  
This is the way shared lib works, If by any chance needed by any process,   
system would provide a way to let this `xxx.so` load and relocate it in   
PLT(Procedure Linkage Table), GOT(Global Offset Table) of the process.  
