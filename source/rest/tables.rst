Tables
======

reStructuredText has a bunch of different ways to create tables. 
There are two standard syntaxes (grid tables and simple tables) and three directives.

Grid tables
--------------

Grid tables are a little worky to create, but offer fairly sophisticated syntax. For example , cells can span rows or columns, and each cell contains a block which means you can do lots of things inside a cell.

Example:

::

    +--------------------------+------------------------------------------+
    |  Element                 |  Syntax                                  |
    +==========================+==========================================+
    |  Substitution definition |  ``.. |text| replacement``               |
    +--------------------------+------------------------------------------+
    |  Cross-reference target  |  ``.. _label:``                          |
    |                          |                                          |
    |                          |  ``Paragraph``                           |
    +--------------------------+------------------------------------------+
    |  Link target             |  ``.. _label: URL``                      |
    +--------------------------+------------------------------------------+
    |  Footnote or citation    |  ``.. [label] Footnote or citation text``|
    +--------------------------+------------------------------------------+

Simple tables
--------------

Simple tables are much easier to create but offer less in the way of features. 

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

The ``table`` directive lets you give a table a title and lets you specify things like cell alignment and column widths.

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

.. code ::

    .. csv-table:: Inline markup
       :header: "Markup", "Effect"
    
       "``*emphasis*``", "*emphasis*"
       "``**strong**``", "**strong**"

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
