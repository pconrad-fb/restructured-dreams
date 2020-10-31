
Explicit markup
===============

*Explicit markup* lets you specify a purpose for a block of text, such as a footnote, comment, or cross-reference target. An explicit markup block starts with two periods and a space, usually followed by additional syntax depending on the type of block.

Syntax examples:

+-------------------------+------------------------------------------+
|  Block                  |  Syntax                                  |
+=========================+==========================================+
|  Substitution definition|  ``..|text| replacement``                |
+-------------------------+------------------------------------------+
|  Cross-reference target |  ``.. _label:``                          |
|                         |                                          |
|                         |  ``Paragraph``                           |
|                         |                                          |
+-------------------------+------------------------------------------+
|  Link target            |  ``.. _label: URL``                      |
|                         |                                          |
+-------------------------+------------------------------------------+
|  Footnote or citation   |  ``.. [label] Footnote or citation text``|
+-------------------------+------------------------------------------+

Directives
----------

A type of explicit markup called a *directive* marks a block of text for a particular purpose: a sidebar, topic, admonition, or image, for example. A directive includes a name, arguments, and options.

Syntax:

::

   .. directive-name:: arguments     
      :option-name: option-values      

      Block body

Standard directives include:

* Admonition (caution, note, and other attention-getting blocks)
* Image and figure
* Table of contents
* Sidebar
* Special tables (see specialtables_)

There are many more standard directives, and you can create your own with a few lines of Python programming.