Other useful blocks
=========================

* Substitution
* Definition list
* Admonition
* Table of contents
* Include
* Sidebar
* Literal
* Code
* Comment

Substitution
-------------

You can use substitutions to replace a word or phrase with a different piece of text or an image, or to apply a style.

A couple things to be aware of:

* You can't use a substitution inside a directive
* You will get an error if you create a circular reference such as
  substituting A for B, B for C, and C for A

Here's an example of replacing one phrase with another:

.. code ::

    The syntax of |reST| doesn't have to be difficult.
    
    .. |reST| replace:: reStructuredText

The directive ``replace`` tells the parser to swap in the text ``reStructuredText`` when it encounters the phrase ``|reST|``.

You can use the ``image`` directive:

::
    
    .. |severe| image:: red.png
                 :alt: Severe fire danger!

Substitutions can be helpful if you need to type something in a way that is not very readable in body text, or takes a long time to type. 



As reStructuredText doesn't support nested inline markup, the only way to create a reference with styled text is to use substitutions with the "replace" directive:

I recommend you try |Python|_.

.. |Python| replace:: Python, *the* best language around
.. _Python: http://www.python.org/


If you want to use some substitutions for all documents, put them into a separate file (e.g. substitutions.txt) and include it into all documents you want to use them in, using the include directive.

Be sure to use a file name extension which different from that of other source files, to avoid Sphinx finding it as a standalone document. For example, use the .rst file extension for the source files, and the .txt file extension for the files which are to be included.

Whitespace or punctuation is required around interpreted text, but often not desired with subscripts & superscripts. Backslash-escaped whitespace can be used; the whitespace will be removed from the processed document:

To improve the readability of the text, the use backslash-escapes is discouraged. If possible, use Substitutions instead:

The chemical formula for pure water is |H2O|.

:: 

    .. |H2O| replace:: H\ :sub:`2`\ O



Definition lists
----------------


Definition lists are created as follows::

    term (up to a line of text)
       Definition of the term, which must be indented
    
       and can even consist of multiple paragraphs
    
    next term
       Description.


Admonitions
-----------

Admonitions are specially marked "topics" that can appear anywhere an ordinary body element can. They contain arbitrary body elements. Typically, an admonition is rendered as an offset block in a document, sometimes outlined or shaded, with a title matching the admonition type. For example:

.. DANGER::
   Beware killer rabbits!


The following admonition directives have been implemented:

    attention
    caution
    danger
    error
    hint
    important
    note
    tip
    warning

Any text immediately following the directive indicator (on the same line and/or indented on following lines) is interpreted as a directive block and is parsed for normal body elements. For example, the following "note" admonition directive contains one paragraph and a bullet list consisting of two list items:

.. note:: This is a note admonition.
   This is the second line of the first paragraph.

   - The note contains all indented body elements
     following.
   - It includes this bullet list.


This is a generic, titled admonition. The title may be anything the author desires.

The author-supplied title is also used as a "classes" attribute value after being converted into a valid identifier form (down-cased; non-alphanumeric characters converted to single hyphens; "admonition-" prefixed). For example, this admonition:

.. admonition:: And, by the way...

   You can make up your own admonition too.

becomes the following document tree (pseudo-XML):

<document source="test data">
    <admonition classes="admonition-and-by-the-way">
        <title>
            And, by the way...
        <paragraph>
            You can make up your own admonition too.

Table of contents
-----------------

The "contents" directive generates a table of contents (TOC) in a topic. Topics, and therefore tables of contents, may occur anywhere a section or transition may occur. Body elements and topics may not contain tables of contents.

Here's the directive in its simplest form:

::

    ..   contents::

Language-dependent boilerplate text will be used for the title. The English default title text is "Contents".

An explicit title may be specified::

    .. contents:: Table of Contents

The title may span lines, although it is not recommended::

    .. contents:: Here's a very long Table of
       Contents title

Options may be specified for the directive, using a field list::

    .. contents:: Table of Contents
       :depth: 2

If the default title is to be used, the options field list may begin on the same line as the directive marker::

    .. contents:: :depth: 2

The following options are recognized:

depth : integer
    The number of section levels that are collected in the table of contents. The default is unlimited depth.
local : flag (empty)
    Generate a local table of contents. Entries will only include subsections of the section in which the directive is given. If no explicit title is given, the table of contents will not be titled.
backlinks : "entry" or "top" or "none"
    Generate links from section headers back to the table of contents entries, the table of contents itself, or generate no backlinks.
class : text
    Set a "classes" attribute value on the topic element. See the class directive below. 

Including snippets
-------------------------

The "include" directive reads a text file. The directive argument is the path to the file to be included, relative to the document containing the directive. Unless the options literal or code are given, the file is parsed in the current document's context at the point of the directive. For example:

This first example will be parsed at the document level, and can
thus contain any construct, including section headers.

.. code::

    .. include:: inclusion.txt
    
    Back in the main document.
    
        This second example will be parsed in a block quote context.
        Therefore it may only contain body elements.  It may not
        contain section headers.
    
        .. include:: inclusion.txt

If an included document fragment contains section structure, the title adornments must match those of the master document.

Standard data files intended for inclusion in reStructuredText documents are distributed with the Docutils source code, located in the "docutils" package in the docutils/parsers/rst/include directory. To access these files, use the special syntax for standard "include" data files, angle brackets around the file name:

.. code::

    .. include:: <isonum.txt>

The current set of standard "include" data files consists of sets of substitution definitions. See reStructuredText Standard Definition Files for details.

The following options are recognized:

start-line : integer
    Only the content starting from this line will be included. (As usual in Python, the first line has index 0 and negative values count from the end.)
end-line : integer
    Only the content up to (but excluding) this line will be included.
start-after : text to find in the external data file
    Only the content after the first occurrence of the specified text will be included.
end-before : text to find in the external data file
    Only the content before the first occurrence of the specified text (but after any after text) will be included.
literal : flag (empty)
    The entire included text is inserted into the document as a single literal block.
code : formal language (optional)
    The argument and the content of the included file are passed to the code directive (useful for program listings). (New in Docutils 0.9)
number-lines : [start line number]
    Precede every code line with a line number. The optional argument is the number of the first line (defaut 1). Works only with code or literal. (New in Docutils 0.9)
encoding : name of text encoding
    The text encoding of the external data file. Defaults to the document's input_encoding.
tab-width : integer
    Number of spaces for hard tab expansion. A negative value prevents expansion of hard tabs. Defaults to the tab_width configuration setting.

With code or literal the common options :class: and :name: are recognized as well.

Combining start/end-line and start-after/end-before is possible. The text markers will be searched in the specified lines (further limiting the included content).

Sidebar
-------

Sidebars are like miniature, parallel documents that occur inside other documents, providing related or reference material. A sidebar is typically offset by a border and "floats" to the side of the page; the document's main text may flow around it. Sidebars can also be likened to super-footnotes; their content is outside of the flow of the document's main text.

Sidebars may occur anywhere a section or transition may occur. Body elements (including sidebars) may not contain nested sidebars.

The directive's sole argument is interpreted as the sidebar title, which may be followed by a subtitle option (see below); the next line must be blank. All subsequent lines make up the sidebar body, interpreted as body elements. For example:

::

    .. sidebar:: Optional Sidebar Title
       :subtitle: Optional Sidebar Subtitle
    
       Subsequent indented lines comprise
       the body of the sidebar, and are
       interpreted as body elements.

The following options are recognized:

subtitle : text
    The sidebar's subtitle. 

Code
-----

The "code" directive constructs a literal block. If the code language is specified, the content is parsed by the Pygments syntax highlighter and tokens are stored in nested inline elements with class arguments according to their syntactic category. The actual highlighting requires a style-sheet (e.g. one generated by Pygments, see the sandbox/stylesheets for examples).

The parsing can be turned off with the syntax_highlight configuration setting and command line option or by specifying the language as :class: option instead of directive argument. This also avoids warnings when Pygments is not installed or the language is not in the supported languages and markup formats.

For inline code, use the "code" role.

The following options are recognized:

number-lines : [start line number]
    Precede every line with a line number. The optional argument is the number of the first line (defaut 1).

and the common options :class: and :name:.

Example::

    The content of the following directive

    .. code:: python

      def my_function():
          "just a test"
          print 8/2

    is parsed and marked up as Python source code.


Comments
--------

Every explicit markup block which isn?t a valid markup construct is regarded as a comment. For example:

.. This is a comment.

You can indent text after a comment start to form multiline comments:

.. code ::

    ..
       This whole indented block
       is a comment.
    
       Still in the comment.

This is a style convention.

Comments can also be used as placeholders to mark places within the document.
