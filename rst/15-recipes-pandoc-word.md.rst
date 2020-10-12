Overview
========

You can use Pandoc to create a Word document that other people can work
on, for upload to Google Drive, or for use with other publishing tools.

Ingredients
-----------

.. raw:: html

   <table>

.. raw:: html

   <tr>

.. raw:: html

   <td>

reStructuredText editor

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

Pandoc

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

Word, Google Drive, or LibreOffice

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

Creating the Word document
--------------------------

The command for creating the document is simple. With a single reStructuredText
file, it looks like this:

::

   pandoc -o my_document.docx reStructuredText.rst

Special Pandoc formatting
~~~~~~~~~~~~~~~~~~~~~~~~~

Pandoc includes a number of formatting tricks that you might find
useful. One of the most useful is fenced div syntax, which uses groups
of colons.

You can use fenced div syntax to create columns using nested divs
without writing ``<div>`` tags in HTML. Take a look at this example:

::

   :::::::::::::: {.columns}
   ::: {.column width="50%"}

   Left column:

   - Bullet
   - Bullet
   - Bullet

   :::
   ::: {.column width="50%"}

   ![](bench.jpg)

   :::
   ::::::::::::::

That translates to a ``<div class="columns">`` containing two
``<div class="column">`` tags. Pandoc uses these to create two columns
in the Word doc. Each ``div`` can be signified with as few as three
colons in a row; in the example, the outer ``div`` uses more colons for
readability.

You can use curly braces to define attributes such as identifiers,
classes, and key/value pairs on headers, images, and a few other
elements in Pandoc. If you’re using Pandoc to create long Word
documents, this is handy because you can set anchors on headings and
link to them internally.

You can also use an attribute to scale an image:

::

   ![Alt text](bench.jpg){width=25%}

When Pandoc renders the image, it is scaled to a percentage of the
container where it resides (a column, for example). The alt text is used
for a caption.

Concatenating multiple files
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can specify as many files as you like. For example:

::

   pandoc -o my_document.docx chapter_1.md chapter_2.md

Title file
~~~~~~~~~~

You can specify a title, author, licensing, and other information about
the book in a file called ``title.txt`` at the front of the book,
containing YAML that Pandoc uses when it generates the file.

Example:

::

   ---
   title: How to do things with reStructuredText and Git
   author: Peter S. Conrad
   language: en-US
   ...

Creating a Word doc with a title file and multiple reStructuredText files looks
like this:

::

   pandoc -o my_document.docx title.txt chapter_1.md chapter_2.md

Images
~~~~~~

When your reStructuredText includes images, use relative paths. For example:

::

   ![An image](../images/whatever.png)

In the above example, the ``images`` directory is at the same level as
the file containing the reStructuredText file; the relative path goes up a
directory from the reStructuredText file and then down into the ``images``
directory to find the image.

When Pandoc follows these relative links, it starts from the directory
where you typed the ``pandoc`` command. If you want Pandoc to find your
images, either run the command from a directory where the relative links
to the images make sense, or copy the images to a place where the
relative links can find them.

Using a reference document
~~~~~~~~~~~~~~~~~~~~~~~~~~

When you use Pandoc to convert reStructuredText to Word, you can apply the theme
and styles from another Word document called a *reference document.* For
example:

::

   pandoc --reference-doc another.docx -o my_document.docx title.txt chapter_1.md chapter_2.md

