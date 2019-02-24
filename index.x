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

The default location to install `hex` will be the `@s(bin)` directory in
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

If I did something wrong with the repository you may not be able to build
`hex` directly.

That is the case if some hex-files are newer than the generated `hx.cpp`.
In that situation the `@s(Makefile)` wants to run `hx` first, but it is
not installed yet.

Normally it is enough to make `hx.cpp` newer by opening it in a text
editor and save it again, or by typing

`@k(touch) @s(hx.cpp)`

on the console.
Then the `@k(make) @s(install)` incantation should work.

# A Password Generator

`hex` processes files with the extension `.x`.
These files contain anything that is need to either generate a HTML
representation of the project and to extract all source files.

These `.x`-files form a bundle or container that contain everything in
a simple text format that can be edited with any editor.

If you invoke `hx` it will process all `.x`-files that are passed as
arguments.
If no files are passed, it will process the file `index.x` if it exists.

The file should start with a header, that describes, what the program
will do.

Oriented at Markdown and Asciidoc, the header starts with a `#`.

You can start the file `index.x` as

```
@k(#) @s(pwg - a password generator)
@k(*) @s(Generates random passwords)
@k(*) @s(Number of upper case, lower case,)
	@s(digits, and special chars can be)
	@s(passed as arguments)
```

In addition to the header the file also contains a note list.
These notes are started with an asterisk and will be added as reader
notes to the slides.

Now run `@k(hx)` again.

Apart from the `.x`-file there is now also an `index.html`.
If you open it, it is not very pretty.
Because the needed Stylesheet file is not present.

Simply make a new `slides` directory and copy the files from

`https:github.com/itmm/slides/`

into it.

If you are planning to make your own `git` repository for this project,
you can also add the slides project as a submodule.

Now you should see a nice start page that is formatted in the same way as
this documentation: this document is also using the `slides` repository.

`@k(TO BE CONTINUED ..)`

