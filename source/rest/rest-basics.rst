Basic syntax
============

A paragraph, the basic block in a reStructuredText document, is a chunk of text
surrounded by blank lines. In reStructuredText, as in Python, indentation is
meaningful. All lines of the same paragraph must be indented the same amount,
and paragraphs at the same indentation level go together.

You can create a block quote just by indenting three spaces.

Example:

::

    This is a normal paragraph.

       This is a block quote

    Back to normal!

To preserve line breaks, you can use line block syntax.

Example:

::

    | J. Q. Worsencraft
    | 123 Example Street
    | Syntax, MA 02134

It's a good idea to separate elements from each other with blank lines. When in
doubt, add a blank line. If you use an editor with a live preview, you will see
very quickly how blank lines affect the way reStructuredText is interpreted.

Headings
--------

In reStructuredText, you indicate heading levels with overlining or underlining.
The overlining or underlining must be at least as long as the heading text.

There is no specific hierarchy of characters that indicate heading levels,
because the reStructuredText parser figures out the headings based on the
structure of the document.

However, Python's style guide includes the following suggested convention:

::

  ####
  Part
  ####

  *******
  Chapter
  *******

  Section
  =======

  Subsection
  ----------

  Subsubsection
  ^^^^^^^^^^^^^

  Paragraph
  """""""""

Lists
-----

Bullet lists start with an asterisk, hyphen, or plus sign. If a list item requires
more than one line, it should be indented.

Example:

::

    * List item
    * Another list item, this one with
      two lines

When using sub-bullets, separate them from the outer list with blank lines.

Example:

::

    * List item
    * List item

      * Sub-bullet
      * Sub-bullet

    * List continues

Numbered lists can use numerals, or you can auto-number them with the ``#`` sign.

Example:

::

    1. This numbered list uses numerals.
    2. It is one way to do a numbered list.

       a. You can do sub-lists.
       #. Autonumbering is smart enough.

    #. These elements octothorpes.
    #. It is another way to do a numbered list.

       * Sub-bullets work too.
       * They work just like in bullet lists.

    7. You can force whatever numbering you like.

Inline markup
--------------

Inline markup lets you format text inline.

Example:

::

    *emphasis* (italics)
    **strong emphasis** (bold)
    ``inline literal`` (monospace)

A few rules help to make it possible to interpret inline markup while also allowing
you to use the special characters in other ways, often without escaping them.

* Inline markup can't be nested.
* The content you're marking up can't start or end with whitespace.
* Non-word characters must separate the inline markup start and end characters
  from the rest of the content.

Example:

::

    Non-word characters separate **this text** and its
    start and end characters from the rest of the sentence.
