Tables
======

reStructuredText includes a number of different ways to create tables.
There are two standard syntaxes (grid tables and simple tables) and three directives.

Grid tables
--------------

Grid tables are a little cumbersome to create, but offer fairly sophisticated
syntax. Cells can span rows or columns. Each cell contains
a block, which means you can do lots of things inside a cell.

Example:

::

    +--------------------------+-------------------------------------+
    |  Element                 |  Syntax                             |
    +==========================+=====================================+
    |  Substitution definition |  ``.. |text| replacement``          |
    +--------------------------+-------------------------------------+
    |  Cross-reference target  |  ``.. _label:``                     |
    |                          |                                     |
    |                          |  ``Paragraph``                      |
    +--------------------------+-------------------------------------+
    |  Link target             |  ``.. _label: URL``                 |
    +--------------------------+-------------------------------------+
    |  Footnote or citation    |  ``.. [label] Footnote or citation``|
    +--------------------------+-------------------------------------+

Simple tables
--------------

Simple tables are much easier to create but offer fewer features.

Example:

::

    =============== ==========
    Markup          Effect
    =============== ==========
    ``*emphasis*``  *emphasis*
    ``**strong**``  **strong**
    =============== ==========

Table directives
----------------

There are three directives that let you create tables in special ways:

* ``table``
* ``csv-table``
* ``list-table``

Table directive
^^^^^^^^^^^^^^^

The ``table`` directive gives a table a title and lets you specify things like
cell alignment and column widths.

Example:

::

    .. table:: Inline markup
       :align: left

       =============== ==========
       Markup          Effect
       =============== ==========
       ``*emphasis*``  *emphasis*
       ``**strong**``  **strong**
       =============== ==========

CSV table directive
^^^^^^^^^^^^^^^^^^^

The ``csv-table`` directive lets you create a table from CSV (comma-separated values) data.

Example:

::

    .. csv-table:: Inline markup
       :header: "Markup", "Effect"

       "``*emphasis*``", "*emphasis*"
       "``**strong**``", "**strong**"

You can use a CSV table with an ``include`` directive to display comma-separated
values from an external file as a table in a reStructuredText document.

List table directive
^^^^^^^^^^^^^^^^^^^^

The ``list-table`` directive lets you create a table from a two-level bullet list, where each bullet is a row and the sub-bullets are cells in the row. Each sublist must contain the same number of list items.

Example:

::

    .. list-table:: Inline markup
       :header-rows: 1

       * - Markup
         - Effect
       * - ``*emphasis*``
         - *emphasis*
       * - ``**strong**``
         - **strong**
