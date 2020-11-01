
Explicit markup
===============

*Explicit markup* lets you specify a purpose for a block of text, such as a footnote, comment, or cross-reference target. An explicit markup block starts with two periods and a space, usually followed by additional syntax depending on the type of block.

Syntax examples:

+-------------------------+------------------------------------------+
|  Block                  |  Syntax                                  |
+=========================+==========================================+
| Substitution definition | ``..|text| replacement``                 |
+-------------------------+------------------------------------------+
| Cross-reference target  |::                                        |
|                         |                                          |
|                         |  .. _label:                              |
|                         |                                          |
|                         |  Paragraph text                          |
+-------------------------+------------------------------------------+
| Link target             | ``.. _label: URL``                       |
|                         |                                          |
+-------------------------+------------------------------------------+
| Footnote or citation    | ``\.. [label] Footnote or citation text``|
+-------------------------+------------------------------------------+

Directives
----------

A type of explicit markup called a *directive* marks a block of text for a particular purpose: a sidebar, topic, admonition, or image, for example. A directive includes a name, arguments, and options.

Syntax:

::

   .. directive-name:: arguments
      :option-name: option-value
      :option-name: option-value

      Block body

You can create your own directives with a few lines of Python programming.

Some useful directives
^^^^^^^^^^^^^^^^^^^^^^

reStructuredText offers many useful built-in directives. Here are just a few:

* Admonition
* Code
* Comment
* Definition list
* Include
* Literal
* Sidebar
* Substitution
* Table of contents

Admonition
""""""""""

An admonition is a specially marked block that calls attention to an important point.
An admonition can appear anywhere an ordinary block can, and can contain
other formatting.

Example:

::

  .. Note::
     An admonition looks like this.


The following admonition directives are built in:

- Attention
- Caution
- Danger
- Error
- Hint
- Important
- Note
- Tip
- Warning

Code
""""

The ``code`` directive is for code snippets. If a language is specified, the
syntax is highlighted. You can add line numbering by specifying a starting line
number with the ``:number-lines:`` option.

Example::

    .. code:: python
       :number-lines: 1

      def my_function():
          "Doing some math"
          print 28 * 9/5 + 32

Comment
"""""""

A block of explicit markup that doesn't do anything else is treated as a comment.

Example::

  .. This is a comment.

You can create longer comments by indenting:

Example::

    ..
       Comment text, which can span
       lines.

       You can add more paragraphs.

Definition list
"""""""""""""""

A definition list lets you create a glossary of terms. If you use Sphinx, there is
a useful ``glossary`` directive that works with definition lists, letting you link
from a word in the text body to its definition in the glossary.

A definition list looks like this:

::

    term (up to a line of text)
       Definition of the term, which must be indented

       and can even consist of multiple paragraphs

    next term
       Definition

Include
"""""""

The ``include`` directive brings in content from another file whose path is
specified relative to the document containing the directive.

Example:

::

    .. include:: ../path/to/other-file.txt

An included file is normally processed as if it were part of the file it's brought
into. That is, if it contains reStructuredText, it is interpreted the same as the
syntax in the rest of the document. If the included file contains headings, they
must match the conventions used for the headings in the rest of the document.

There are options for including just part of an external file (by line number or
by other markers) and for treating the file contents as a code or literal block to
prevent it from being parsed as reStructuredText.

Sidebar
"""""""

The ``sidebar`` directive creates a short, separate section to add reference, context, or
other additional information to a document.

Example::

    .. sidebar:: Optional Title
       :subtitle: Optional Subtitle

       Body text of the sidebar, which
       can contain body elements (but
       can't contain other sidebars).

Substitution
""""""""""""

You can use a substitution to replace a word or phrase with a different piece of
text or an image, or to apply a style.

The substitution directive looks like this:

::

   .. |label| replace:: text to replace the label

When you put ``|label|`` in the body of your text, the parser replaces it with
the ``text to replace the label``.

There are a couple gotchas:

* You can't use a substitution inside another directive
* You will get an error if you create a circular reference such as
  substituting A for B, B for C, and C for A

Here's an example of replacing one phrase with another:

::

    The syntax of |reST| doesn't have to be difficult.

    .. |reST| replace:: reStructuredText

The directive ``replace`` tells the parser to swap in the text ``reStructuredText``
when it encounters the phrase ``|reST|``.

You can use the ``image`` directive inside a substitution for icons or other
images that appear frequently in the text:

::

    .. |severe| image:: red.png
                 :alt: Severe fire danger!

Substitutions can be helpful if you need to type something in a way that is not
very readable in body text, or takes a long time to type.

Example:

::

   The chemical formula |H2SO4| is not very readable in raw reStructuredText,
   but substitutions make it easy on the eyes.

   .. |H2SO4| replace:: H\ :sub:`2`\ SO\ :sub:`4`

As reStructuredText doesn't support nested inline markup, a substitution is the
only way to create a reference with styled text:

::

  reStructuredText was created to document |Python|_.

  .. |Python| replace:: **Python**
  .. _Python: http://www.python.org/

.. Hint::
   If there are substitutions you want to use for multiple documents (or chapters),
   you can put them all into a file together and include it in each document using
   the ``include`` directive. If you're using Sphinx, give the file a different
   extension from the other files (or put it somewhere else) so that it doesn't
   get interpreted as a standalone document.

Table of contents
"""""""""""""""""

The ``contents`` directive generates a table of contents.

Example:

::

    .. contents:: Optional title
       :depth: 2

Below the directive, you can specify a few options. In the above example, ``depth`` specifies
how many levels of heading to display.