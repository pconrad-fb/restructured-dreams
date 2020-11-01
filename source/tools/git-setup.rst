Git setup
=========

If you want to be ready for all the recipes in this guide, follow these
steps to install Git and a Git client, sign up for a host, and set up
your first repository.

Install Git
-----------

On the command line, check whether Git is installed on your computer by
typing:

::

   git --version

If Git is not installed, follow these steps.

1. Install Git on your computer:

   -  `Windows <https://git-scm.com/download/win>`__
   -  `macOS <https://git-scm.com/download/mac>`__
   -  `Linux <https://git-scm.com/download/linux>`__

2. Install a git client such as
   `Sourcetree <https://www.sourcetreeapp.com/>`__ or `GitHub
   Desktop <https://desktop.github.com/>`__.

.. Hint:: You can use any Git client with any Git host, but some clients
   work especially well with specific hosts. For example:

   - Sourcetree and Bitbucket
   - GitHub Desktop and GitHub

Set up a repository
-------------------

A *repository* is where you keep your work. You’ll need a *local
repository* where you edit and save files on your computer, and a
*remote repository* online that lets people collaborate on the same
project. A straightforward way to create both is to set up a repository
with an online host and then *clone* it (create a local copy). Your
collaborators can also clone the repository to their own computers, so
everyone can keep in sync by pushing and pulling changes.

Bitbucket and Sourcetree
^^^^^^^^^^^^^^^^^^^^^^^^

#. Sign up with Bitbucket (https://bitbucket.org/) and log on.
#. Click the new repository button (the plus sign):  

   .. image:: ../../img/recipes-git-repo-bb-add.png
      :alt: New repository button

#. Type a repository name, make sure it's set to be a public repository, and 
     click **Create repository**.
#. Choose or create a directory on your computer where you would like to keep your 
      local copy of the project.
#. Click **Clone in Sourcetree**.  

   .. image:: ../../img/recipes-git-wiki-bb-clone.png
      :alt: "Clone in Sourcetree" dialog

#. Choose a folder on your computer for the local copy of the repository
      and click **Clone**.

GitHub and GitHub Desktop
^^^^^^^^^^^^^^^^^^^^^^^^^

#. Sign up with GitHub (https://bitbucket.org/) and log on.
#. Click the plus sign and select **New repository**:   

   .. image:: ../../img/github-new-repository.png
      :alt: New repository menu

#. Type a repository name, make sure it's set to be a public repository, and 
   click **Create repository**.
#. Click **Set up in Desktop** to open the repository in GitHub Desktop:  

   .. image:: ../../img/github-set-up-in-desktop.png
      :alt: Set up in desktop button

#. Choose a folder on your computer for the local copy of the repository
   and click **Clone**.

It might not look like much has happened, but you now have:

-  Git running on your computer
-  A repository at an online Git host
-  A local copy of the repository on your computer

