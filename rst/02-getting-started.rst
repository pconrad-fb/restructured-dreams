Getting started
===============

You can start working with reStructuredText just by opening your favorite text
editor and starting to type—but you probably want to do more than that.
For example, you might want to share information on a website or wiki,
take notes, or publish an eBook. To get the most out of ReStructuredText, you’ll
want to be familiar with some of these tools and topics.

Ingredients
-----------

These are the tools and resources you will use for the recipes in this
guide. Each recipe lists the tools you’ll need.


**ReStructuredText editor**  

A ReStructuredText editor is a specialized text editor that       works with ReStructuredText. Different editors have different features—you’ll want to play with more than one to find out which you like.

**Pandoc**

Pandoc lets you convert between reStructuredText and a few other formats.

**Shared storage**

If you are collaborating with others, you’ll need a shared place to
store ReStructuredText files. You might also want web hosting or a blogging
platform where you can publish your content when it’s complete.

**Git**

Source control can be very important for collaborating without
catastrophe. You’ll need an account with a Git host, a Git client, and
Git installed on your computer.

**Publishing tools**

Documentation management tools, static site generators, and even Pandoc
can be useful to convert your content to a final format for general
consumption.

**Other documentation tools** 

https://gist.github.com/dupuy/1855764

**Sphinx**
https://thomas-cokelaer.info/tutorials/sphinx/quickstart.html

Sphinx is a documentation generator or a tool that translates a set of plain text source files into various output formats, automatically producing cross-references, indices, etc. That is, if you have a directory containing a bunch of reStructuredText or Markdown documents, Sphinx can generate a series of HTML files, a PDF file (via LaTeX), man pages and much more.
Sphinx focuses on documentation, in particular handwritten documentation, however, Sphinx can also be used to generate blogs, homepages and even books. 

The root directory of a Sphinx collection of plain-text document sources is called the source directory. This directory also contains the Sphinx configuration file conf.py, where you can configure all aspects of how Sphinx reads your sources and builds your documentation. 1

Sphinx comes with a script called sphinx-quickstart that sets up a source directory and creates a default conf.py with the most useful configuration values from a few questions it asks you. 

Getting started
---------------

You can install everything up front, or just install what you need as
you go along. If you’re not sure, start with the following steps:

1. Install `Pandoc <../../tools/tools-publishing/#pandoc>`__.
2. Choose and install a `ReStructuredText
   editor <../../tools/tools-editors/>`__.
3. Set up `Git <../../tools/tools-git-setup/>`__.
4. Install `Sphinx <>`_.

Once you’ve got these tools installed, you can start trying the recipes.

Things to know
--------------

You’ll find it easiest to follow the recipes in this guide if you are
comfortable with the following topics:

(XXX we're going to teach reST syntax)


| **Working with a package manager**
| Installing some tools requires using one of the following common
  package managers:

-  Linux: `apt-get <https://help.ubuntu.com/community/AptGet/Howto>`__
   or `yum <http://yum.baseurl.org/>`__
-  macOS: `Homebrew <https://brew.sh/>`__
-  Windows: `Chocolatey <https://chocolatey.org/>`__

A package manager can make it easy to install several packages at once.
For example:

::

   sudo apt-get install python3 retext gftp

| **Git**
| Some of the recipes in this guide use `Git <https://git-scm.com/>`__.
  Git is very powerful, but doesn’t have to be hard to use. The recipes
  in this guide emphasize simplicity. If you already know Git, you can
  choose to do things differently. If you don’t know git, take a look at
  `Git basics <../getting-started-git-basics>`__.

