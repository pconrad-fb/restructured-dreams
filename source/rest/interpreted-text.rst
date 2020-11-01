Interpreted text
================

Interpreted text lets you format a word or phrase, or mark it as a reference,
index entry, or other meaningful element. The way that the word or phrase is
interpreted is called its *role.* If you don't specify a role, the default role
(which is initially set to ``:title-reference:``) is used.

Syntax:

::

   :role:`text`

Example:

::

    :strong:`this text is bold`

Standard roles include:

* ``:emphasis:`` - usually displayed with italics, equivalent to \*emphasis*
* ``:literal:`` - usually displayed in monospace, equivalent to \`\`literal``
* ``:code:`` - marks the content as code in a formal language
* ``:math:`` - allows the use of mathematical notation to display a formula
* ``:pep-reference:`` - an HTTP reference to a Python enhancement proposal (PEP)
* ``:rfc-reference:`` - an HTTP reference to an internet request for comments (RFC)
* ``:strong:`` - usually displayed with bold, equivalent to \*\*strong**
* ``:subscript:`` - displays smaller characters lower than the line of text
* ``:superscript:`` - displays smaller characters higher than the line of text
* ``:title-reference:`` - describes the titles of books and other materials

The roles ``:emphasis:``, ``:literal:``, and ``:strong:`` are functionally  
the same as their inline markup equivalents.
