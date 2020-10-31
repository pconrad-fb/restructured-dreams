Links 
=====

You can link to websites, files, or places in your documents. There are several good ways to create a link:

* A standalone link, which is just a URL:
  
  ::

    http://www.example.com
  

* A link with the URL embedded inline:

  ::

    See `this example <http://www.example.com>`_

* A reference name in the text body with a corresponding target elsewhere in the document:

  ::

    See the example_ for yourself

    .. _example: http://www.example.com

This third way is the most useful: it keeps the body text readable by getting the URL out of the way, and lets you link anywhere inside or outside the document. If the reference in the text body is one word, then no backticks are required. With backticks, you can create a *phrase reference.* 

Example:

::
    
    See `the above example`_ for yourselr.

.. Note::

   You probably already noticed that the reference in the body is interpreted text and 
   the reference target is explicit markup.

A link reference ends with an underscore, and a link target begins with an underscore. You can think of the underscore as an arrow to the right, pointing away from the reference and toward the target.

Internal links
--------------

If you want to link to a place in your document, place a label above the header or paragraph you want to link to. For example:

::

    .. _example:

    This paragraph has the example in it. I want to be able to link to it.

You can then create a link to the paragraph like this:

:: 

    Take a look at the example_ above.

.. Note::

   Notice the difference between the explicit markup that defines a link target, and 
   the syntax of a directive. A directive is followed by two colons (``::``), while a
   link target is followed by one.

You can embed a link target in the body of text like this:

::

   Here is an _`example` target. You can link to it like this: `example`_. 


Implicit hyperlinks
-------------------

Section titles, footnotes, and citations automatically work as link targets. You can use the section title text or the footnote label in your link reference. However, you might prefer to create explicit labels so that you can change section titles without breaking internal links.

Links to links
--------------

You can use link targets to create other links. I am not sure why it is useful, but this works:

::

   The `Example page`_ is a link to www.example.com, but so is example_!

   .. _Example home page: http://www.example.com
   .. _example: `Example home page`_


The bracketed URI must be preceded by whitespace and be the last text before the end string.

Footnotes and citations
-----------------------

A footnote looks a bit like an internal reference in square brackets. 

Example:

::

   Footnotes are very usful in text [1]_ because they let you add information
   that doesn't fit in the paragraph elegantly.

   .. [1] But does anyone read them?

Notice that the footnote target omits the leading underscore and the trailing colon.

You can use numerals to explicity number footnotes, or you can auto-number them with the octothorpe symbol: ``[#]_``. You can also use text labels or symbols such as the asterisk.

Citations are similar to footnotes, except that the reference label is a short-form citation and the reference target is a longer-form citation.


Example:

::

    As we learn from [CITATION001]_, citations are useful.
    
    .. [CITATION001] AuthorLastName, AuthorFirstName. "Article Title." Journal Title,
       Version, Number, Publication Date, Page Numbers. 

