# Using hex
* This tutorial introduces the usage of `hex` on a concrete example
* `hex` is a new system for writing software
* Any kind of software

# Motivation
* Why should you use a new system for writing software?

There are a lot of tools and mechanisms for writing software.
A lot of programming languages, IDEs, editors and build systems are
available.
A lot of them even for free.
So why should you use another one?

A short answer would be: To improve the maintainability of your software.

With `hex` you make your code better understandable.

With `hex` you find errors in your code faster.

With `hex` you make your code extendable by a broader group of people.

All of this won't affect the executable size or final performance.

# Content
* Install `hex`
* Write a small program in `hex`

# Installing hex
* Prerequisites
* Cloning the Repository
* Building and installing `hex`

## Prerequisites for hex
* What is needed for building `hex`?

To build `hex` you need a C++ compiler that supports the 2014 Standard of
C++.

`hex` itself can generate and process files in a wide range of
programming languages.
Projects exist that use C, ARM-Assembler, C++, JavaScript, HTML, CSS.
But `hex` itself is written in C++.
So you need a C++ compiler to build `hex`.
Apart from the Compiler you only need the `make` tool.

Also you need a console where you can run commands in.
I assume a unix-like environment like Linux, macOS or Windows with the
Ubuntu extensions or Cygwin.
If you can run the following command

`@k(c++) --version`

and you do not get an error message but some kind of version information,
you are probably fine.

On my computer, it outputs:

`@s(c++ (Raspbian 6.3.0-18+rpi1+deb9u1@) 6.3.0 20170516)`
`@s(Copyright (C@) 2016 Free Software Foundation, Inc.)`
`@s(This is free software; see the source for copying conditions.  There is NO)`
`@s(warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.)`

## Cloning the Repository
* Loading the Repository from `github.com`

The source-code for building `hex` is hosted on `github.com` at

`@s(https://github.com/itmm/hex/)`

You can either download an archive with all the files or you can clone
the repository.
To do the latter you must have the tool `git` installed and call on
the command line

`@k(git) @k(clone) @s(https://github.com/itmm/hex.git)`

Then you should have a new directory `@s(hex)` with all the source-code
inside. Especially there should be a file `@s(hx.cpp)` that you need to
build `hex`.

## Building and installing hex
* Build `hex`
* and install it at the default location

The default location to install `hex` will be the `s{bin}` directory in
your home directory.
If you want to use a different directory please adjust the directory in
the `@s(install)` target of the `@s(Makefile)`.

Running

`@k(make) @s(install)`

should build the executable and install the two files `hx` and
`hx-files.sh` into the binary directory.
If you have this binary directory in your search `$PATH`, then you can
invoke `hex` by typing

`@k(hx)`

Normally you do not need to provide any parameters.

If seemingly nothing happens after you typed `@k(hx)`, then everything
is fine.
You are now ready to use `hex`.



