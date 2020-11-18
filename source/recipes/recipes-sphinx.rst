Build docs with Sphinx
======================

Sphinx is a Python-based documentation generator that builds websites, ePub books, PDFs, and other formats from reStructuredText or Markdown. Sphinx adds directives like ``toctree``, ``index``, and ``glossary`` to reStructuredText so you can manage a group of documents together as part of a larger set. 

You can install Sphinx using the Python ``pip`` command:

   ``pip install sphinx``

Once Sphinx is installed, you can do the following:

- Run ``sphinx-quickstart`` to create a new documentation project
- Add content files and folders to the ``source`` directory
- Use the ``toctree`` directive to structure the documentation (and set up navigation)
- Choose a theme
- Build the documentation in HTML, PDF, ePub, and other formats 

Sphinx is pretty straightforward. The one thing that's a little finicky is using the ``toctree`` directive to structure the navigation. There are many approaches, but I've chosen one that I feel is easy and sensible to document below.

There is also a service called Read the Docs (https://readthedocs.org/) that can help you create, build, and host Sphinx-based documentation.

Sphinx-quickstart
---------------------------

Once you've installed Sphinx, run the script ``sphinx-quickstart``, which asks you a few questions and then uses your answers to set up a basic documentation project, including:

   * A ``source`` directory for your files
   * A basic configuration file ``conf.py`` 
   * A main document, your top-level ``index.rst`` file  
   * Makefiles, which make it easier to build your documentation

After you run the ``sphinx-quickstart`` script, you're ready to start building your documentation structure by adding files and folders to the ``source`` directory and creating navigational structure with the ``toctree`` directive.

The toctree directive
------------------------

No matter how you organize your ``source`` directory of reStructuredText files, it is the ``toctree`` directive that determines the structure used to build the documentation. The root  of the ``toctree`` goes in the top level ``index.rst`` file in your ``source`` directory. 

Some parsers don't understand Sphinx directives such as ``toctree``, so you'll
sometimes see errors like this, which you can ignore:

.. image:: ../../img/unknown-directive-toctree.png

One simple option for structuring your documentation is to create a single ``toctree`` in the top-level ``index.rst`` pointing to other files and folders in the ``source`` directory. The result is a flat structure, where all the generated pages are navigational peers. 

Hierarchical navigation
^^^^^^^^^^^^^^^^^^^^^^^

To create hierarchical navigation, organize your reStructuredText files into folders, each one of which contains an ``index.rst`` file with its own ``toctree`` directive, with a top-level ``index.rst`` and ``toctree`` to pull everything together.

Here are the rules:

- Every folder gets an ``index.rst`` file, which functions as an overview of the content in the folder.
- Every ``index.rst`` file gets a ``toctree`` directive.
- Every reStructuredText file must have a title.
- Every reStructuredText file you want to appear in the navigation must appear in the ``toctree`` directive in its local ``index.rst`` file.
- The ``toctree`` in the top-level ``index.rst`` governs the overall structure of the navigation. 

The top-level ``toctree`` (that is, the ``toctree`` in ``source/index.rst``) might look like this::

    reStructured Dreams
    ===================
    
    .. toctree::
       :includehidden:
    
       getting-started
       rest/index
       tools/index
       recipes/index
       resources/index

Each filename is listed without the file extension. For example, ``getting-started`` refers to ``getting-started.rst`` in the source directory with the ``index.rst`` where this ``toctree`` appears. 

On subsequent lines, the index file of each folder is listed so that Sphinx knows where to find the other ``toctree`` directives. The index file of each folder is referred to as you might expect, with a local path. For example, ``rest/index`` is a local path from inside the ``source`` directory to ``source/rest/index.rst``. 

In each folder's ``index.rst`` file, add a ``toctree`` that lists the files to include in that part of the navigation. Example::

    reST
    ====
    
    .. toctree::
       :hidden:
    
       editors
       storage
       git
       git-setup
       git-basics
       publishing

In the above ``index.rst`` file, the ``toctree`` directive lists other pages in the folder and the order in which to include them. In the navigational hierarchy, the titles of those reStructuredText pages will be children of the title of this ``index.rst`` page ("reST," in this case).

You can of course use this method to create navigation into a deep structure with folders of folders of folders and so on, but it is probably better to keep things simple.

Finally, on each lowest-level page, add a hidden ``toctree`` directive. This lets Sphinx add the page's headers to the navigation. Example::

    .. toctree::
       :hidden:

.. note:: If you don't put a title and a ``.. toctree::`` on every page, then your navigation will not behave as you expected and you will get warnings during the build process.

..
      /home/pconrad/git/restructured-dreams/source/recipes/index.rst:4: WARNING: toctree contains reference to document 'recipes/sphinx' that doesn't have a title: no link will be generated

If you create all the ``toctree`` directives correctly in all the right places, Sphinx rewards you with nice left-hand navigation:

.. image:: ../../img/sphinx-website-nav.png

Themes
------------

Like other documentation generators, Sphinx provides themes so you can customize the way your docs look. There is a list of built-in themes on the Sphinx website (start at https://www.sphinx-doc.org).

To use a built-in theme, just change the ``html_theme`` parameter in ``source/conf.py`` to the theme name. Each theme has options that you can set in the ``html_theme_options`` parameter.

Additional themes come in three forms:

- A Python package
- A directory containing ``theme.conf`` and other needed files
- A Zip file containing ``theme.conf`` and other needed files

To use a theme that comes in a Python package, just install it with ``pip``. Example::

    $ pip install sphinxjp.themes.theme_name

Once it's installed, you can use it by setting the ``html_theme`` parameter in ``config.py``. Example::

    html_theme = "theme_name"

To use a theme that comes in a directory or Zip file, use the parameter ``html_theme_path`` in ``config.py`` to tell Sphinx where to find the theme. For example, if you place the theme directory or Zip file in the same directory as ``config.py``, you might add the following parameters::

    html_theme = "theme_name"
    html_theme_path = ["."]

A few useful features
-----------------------

Sphinx adds a number of capabilities that make it easier to manage large documentation projects. Here are three that are especially useful: 

- Index
- Ref
- Glossary

Index 
^^^^^^^^^^^

The ``index`` directive lets you add index entries for a paragraph. Here is a simple example::

    .. index::
        single: desserts; pie
        single: delicious things

Placing the above directive near a paragraph would create two entries in the index:

- A sub-entry "pie" in the "desserts" entry
- A "delicious things" entry

Basic index entry types
"""""""""""""""""""""""

+----------------------------------------------------+---------------------------------------------+
|  Type                                              | Purpose                                     |
+====================================================+=============================================+
| ``single:`` {term}                                 | A single entry for "term"                   |
+----------------------------------------------------+---------------------------------------------+
| ``single:`` {term 1}\ ``;`` {term 2}               | A sub-entry for "term 2" under "term 1"     |
+----------------------------------------------------+---------------------------------------------+
| ``pair:`` {term 1}\ ``;`` {term 2}                 | Two entries:                                |
|                                                    |                                             |
|                                                    |    - A sub-entry for "term 2" under "term 1"|
|                                                    |    - A sub-entry for "term 1" under "term 2"|
+----------------------------------------------------+---------------------------------------------+
|``triple:`` {term 1}\ ``;`` {term 2}\ ``;`` {term 3}| Three entries, similar to ``pair``          |
+----------------------------------------------------+---------------------------------------------+

Ref
^^^^^^^^^^^^^^^^

The ``:ref:`` role lets you create links between headings, even if they are in different files. This is very useful when working with large documentation projects. There are two parts:

- The label
- The reference

To create a label, add a directive at the beginning of the section you want to reference::

    .. _my-label:

    Section to cross-reference
    --------------------------

    This is the text of the section.

Elsewhere, you can use the ``:ref:`` role to link to the labeled section::

    For more information, see :ref:`my-reference-label`.

Because you don't have to change the label when you change the text of a heading, the ``:ref:`` role makes cross-references easier to manage as a document set evolves.

Glossary
^^^^^^^^

The ``glossary`` directive lets you create a list of terms and definitions that you can then reference from the text.

For example, a glossary might look like this::

 .. glossary::
    :sorted:

   aardvark 
      An animal that eats ants.

   accordion
      A musical instrument that makes ants run away.

The ``:sorted:`` option sorts the glossary into alphabetical order automatically.

You can use the ``:term:`` role to link from terms in the text to their entries in the glossary. Example::

    An :term:`aardvark` prefers not to play the :term:`accordion` because
    it makes ants run away.

Building your docs 
-------------------

There are two ways to build your docs:

- The ``sphinx-quickstart`` script creates a ``Makefile`` so you can build your docs by typing ``make`` and the desired output format. 
- If you don't have the ``Makefile`` for some reason, you can use ``sphinx-build`` instead, specifying the output format, the source directory, and the build directory where the resulting files should be saved.

The two commands are equivalent. In other words, to build the HTML version of your documentation, you can type either:: 

    make html

or::

    sphinx-build -b html source/ build/

Building HTML
^^^^^^^^^^^^^

To build the HTML version of your documentation, type::

    make HTML

While Sphinx builds the HTML, it lets you know what it's doing and whether there are any errors or warnings you might want to pay attention to. This is useful for making sure you've included all the ``.rst`` files in the ``toctree`` to set up your navigation properly.

Here's an example (I used ``sphinx-build`` instead of ``make``)::

    $ sphinx-build -b html source/ build/
    Running Sphinx v3.2.1
    loading pickled environment... done
    building [mo]: targets for 0 po files that are out of date
    building [html]: targets for 2 source files that are out of date
    updating environment: 1 added, 4 changed, 0 removed
    reading sources... [100%] tools/index                                                          
    /home/pconrad/git/restructured-dreams/source/recipes/13-recipes-hugo.rst:: WARNING: image file not readable: recipes/../../static/images/whatever.png
    /home/pconrad/git/restructured-dreams/source/resources/22-restructuredtext-cheatsheet.rst:45: WARNING: image file not readable: path/to/image.jpg
    looking for now-outdated files... none found
    pickling environment... done
    checking consistency... /home/pconrad/git/restructured-dreams/source/01-index.rst: WARNING: document isn't included in any toctree
    /home/pconrad/git/restructured-dreams/source/rstest.rst: WARNING: document isn't included in any toctree
    done
    preparing documents... done
    writing output... [100%] tools/index                                                           
    generating indices...  genindexdone
    writing additional pages...  searchdone
    copying images... [100%] recipes/../../img/hugo-preview.png                                    
    copying static files... ... done
    copying extra files... done
    dumping search index in English (code: en)... done
    dumping object inventory... done
    build succeeded, 4 warnings.
    
    The HTML pages are in build

Building an ePub
^^^^^^^^^^^^^^^^

Building an ePub is as easy as building HTML. Just use ``make``::

    make epub

If that doesn't work for some reason, you can use ``sphinx-build``::

    sphinx-build -b epub source/ build/

You can open the ePub file in a reader, or edit it with an ePub editor such as Sigil.

.. image:: ../../img/sphinx-epub-in-sigil.png

Building a PDF
^^^^^^^^^^^^^^

Building a PDF is fairly straightforward in Linux, but can be complicated in macOS or Windows. In any case, the formatting options seem limited. For example, I was not able to figure out how to remove numbering from section headings. If you want to create a PDF and have some control over formatting, you might consider using Pandoc to convert the reStructuredText files for use in a tool like Microsoft Word or LibreOffice Writer.

Building a PDF in Linux
"""""""""""""""""""""""

If you still want to build a PDF using Sphinx in Linux, here is how to do it:

#. Install a PDF rendering engine such as ``latexmk``. For example (Ubuntu/Debian)::

   $ sudo apt-get install latexmk

#. Set some options for LaTeX output in ``conf.py``. I recommend at least the following::

    latex_show_pagerefs = True
    latex_show_urls = 'inline'

#. Use ``make`` to create the PDF::

    make latexpdf


If ``make`` doesn't work for some reason, you can use ``sphinx-build``::

    sphinx-build -M latexpdf source/ build/

The result is a fairly basic PDF with numbered headings:

.. image:: ../../img/sphinx-latex-pdf.png


