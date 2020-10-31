Publishing tools
================

https://people.mbi.ucla.edu/leec/docs/gitpublish/intro.html

Sphinx
------
https://www.sphinx-doc.org/en/master/

 Sphinx is a tool that makes it easy to create intelligent and beautiful documentation, written by Georg Brandl and licensed under the BSD license.

It was originally created for the Python documentation, and it has excellent facilities for the documentation of software projects in a range of languages. Of course, this site is also created from reStructuredText sources using Sphinx! The following features should be highlighted:

    Output formats: HTML (including Windows HTML Help), LaTeX (for printable PDF versions), ePub, Texinfo, manual pages, plain text
    Extensive cross-references: semantic markup and automatic links for functions, classes, citations, glossary terms and similar pieces of information
    Hierarchical structure: easy definition of a document tree, with automatic links to siblings, parents and children
    Automatic indices: general index as well as a language-specific module indices
    Code handling: automatic highlighting using the Pygments highlighter
    Extensions: automatic testing of code snippets, inclusion of docstrings from Python modules (API docs), and more
    Contributed extensions: more than 50 extensions contributed by users in a second repository; most of them installable from PyPI

Sphinx uses reStructuredText as its markup language, and many of its strengths come from the power and straightforwardness of reStructuredText and its parsing and translating suite, the Docutils. 

Sphinx is a Python documentation generator.

It requires Python, which is installed by default in Linux and Mac OS X systems. For Microsoft Windows systems, see Installing Python on Windows if you need help installing Python and two useful installation utilities (easy_install and pip).

After you have Python installed, simply use the following command (in a command window):

easy_install -U Sphinx

Elevated privileges (i.e. administration rights) should not be required.

The Sphinx builder can produce a number of output formats (e.g. HTML, PDF). PDF files can be produced using the LaTeX builder (more complicated) or using the a direct PDF builder called rst2pdf (see below).

Rst2Pdf
-------

rst2pdf is a tool for transforming reStructuredText to PDF using ReportLab. To install rst2pdf on Windows you also need Python because rst2pdf is coded in python.

Rst2pdf uses ReportLab, which can be installed using:

easy_install reportlab

Again, in Windows, there may be a problem with the required Microsoft Visual Studio version. While running setup.py for package installations, Python 2.7 searches for an installed Visual Studio 2008. The solution is to define VS90COMNTOOLS variable to point to Tools directory of Visual Studio:

SET VS90COMNTOOLS=%VS100COMNTOOLS%

How to install rst2pdf on Windows?

    Download rst2pdf source from https://code.google.com/p/rst2pdf/downloads/list
    Unzip the file to an rst2pdf folder.
    Goto the the rst2pdf folder which contains setup.py file.
    Run python setup.py install command and it will be installed.
    To convert any .rst file to PDF file Run rst2pdf myfile.rst command and you are done.

    http://rst2pdf.ralsina.me/
    User Manual: http://ralsina.me/static/manual.pdf

Pandoc
------

Pandoc is a tool that can convert between Markdown and a number of formats. You can use Pandoc to create Word and Powerpoint documents, PDFs, HTML, and several kinds of presentations. For longer documents, can concatenate Markdown files together.

Pandoc includes formatting tricks that let you do things like create columns or scale images, and you can use stylesheets from existing documents to give your content a specific look and feel.

You can also convert from various formats to Markdown, including doing things like grabbing a web page as a Markdown file. You can even try it online.

ReST editor for Eclipse
-----------------------

The ReST editor for Eclipse is a plug-in for the Eclipse IDE. If Sphinx is installed, it can also be used to create (and build) Sphinx projects from within Eclipse. The following presentation documents the use of the editor.

This ReST editor has several advantages, namely:

    integrated spell-checking using Hunspell4Eclipse
    contextual ReST syntax help
    sections outline rearrangement

This document opened in the Eclipse ReST Editor.
