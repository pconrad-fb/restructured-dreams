Collaborate using centralized Git workflow
==========================================

You can use Git to help a team collaborate on informal or internal
documents in a very simple way. 

The centralized workflow can be an effective way for content creators,
managers, and engineers to collaborate on non-production content such as
specifications, planning documents, newsletters, internal documentation,
and the like.

.. figure:: ../img/git-centralized-workflow.png
   :alt: Diagram of centralized Git workflow

   Diagram of centralized Git workflow

In this workflow, everyone works on the same branch. This makes things
easy for simple collaboration.

!!! Note If you’re publishing a large website or documentation set in a
production environment with with a substantial number of collaborators,
you should consider using `GitHub Flow <../recipes-gitflow/>`__ instead.

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

Git

.. raw:: html

   </td>

.. raw:: html

   </tr>

.. raw:: html

   <tr>

.. raw:: html

   <td>

Publishing tools (optional)

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

This recipe uses the centralized Git workflow. `Pick an
editor <../../tools/tools-editors/>`__, then make sure you have Git set
up and try each step below. The steps work together like a heartbeat
that keeps content safe and synchronized for all collaborators.

–8<– “centralized-workflow-snippet.html”

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
