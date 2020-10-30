Manage docs with GitHub Flow
============================

Once your team or project reaches a certain size, branching is a good
way to keep people from accidentally interfering with each other’s work.
It’s also a great way to stage and test code or content before migrating
to production. There are many branching strategies, some of them quite
complicated. The one I like, and that I have used for documentation in
the past, is called `GitHub
Flow <https://scottchacon.com/2011/08/31/github-flow.html>`__. It’s
simple but effective. The **Pull-Work-Commit-Push** steps happen within
a working branch.

.. figure:: ../img/github-flow.png
   :alt: Diagram of GitHub flow

   Diagram of GitHub flow

What you need
-------------

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

Git

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

Publishing tools

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   </table>

!!! hint Plan ahead based on the publishing tool you want to use. If
you’re planning to use a wiki, MkDocs, or Hugo, organize your docs in
`Git wiki structure <../../tools/tools-publishing#git-wiki-structure>`__
and add YAML frontmatter from the start. If you’re creating large
documents with Pandoc, think about whether you need to work on content
in pieces and then use Pandoc to assemble everything.

Working with content
--------------------

`Pick an editor <../../tools/tools-editors/>`__, then make sure you have
Git set up and try each step below. The steps work together like a
heartbeat that keeps content safe and synchronized for all
collaborators. –8<– “github-flow-snippet.html”

!!! hint After you’re done with that part of the project, you can delete
your working branch or keep it around for further work. Before starting
work on a different part of the project, remember to switch to
``main`` and pull again.

If you need to `Publish content <../../tools/tools-publishing/>`__, you
can use one of these recipes:

-  `Publish documentation with MkDocs <../recipes-mkdocs/>`__
-  `Publish a website with Hugo <../recipes-mkdocs/>`__
-  `Create a document with Pandoc <../recipes-pandoc/>`__

!!! hint Remember not to publish content into a Git repository. The repo
is only for storing your reStructuredText and other source files.

Next steps
----------

Check out the following recipes :

-  `Manage docs with Gitflow <../recipes-gitflow/>`__
-  `Create an eBook <../recipes-pandoc-ebook/>`__
-  `Write a Word doc <../recipes-pandoc-word/>`__
-  `Publish a PDF <../recipes-pandoc-pdf/>`__
-  `Present slides <../recipes-slides/>`__
