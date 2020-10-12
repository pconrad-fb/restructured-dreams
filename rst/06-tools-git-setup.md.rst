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

!!! hint You can use any Git client with any Git host, but some clients
work especially well with specific hosts. For example:

::

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

=== “Bitbucket and Sourcetree”

::

   1. Sign up with [Bitbucket](https://bitbucket.org/) and log on.
   2. Click the new repository button (the plus sign):  
     ![New repository buttoon](../img/recipes-git-repo-bb-add.png)
   3. Type a repository name, make sure it's set to be a public repository, and 
     click **Create repository**.
   4. Choose or create a directory on your computer where you would like to keep your 
      local copy of the project.
   5. Click **Clone in Sourcetree**.  
      !["Clone in Sourcetree" dialog](../img/recipes-git-wiki-bb-clone.png)
   6. Choose a folder on your computer for the local copy of the repository
      and click **Clone**.

=== “GitHub and GitHub Desktop”

::

   1. Sign up with [GitHub](https://bitbucket.org/) and log on.
   2. Click the plus sign and select **New repository**:   
      ![New repository menu](../img/github-new-repository.png)
   1. Type a repository name, make sure it's set to be a public repository, and 
     click **Create repository**.
   1. Click **Set up in Desktop** to open the repository in GitHub Desktop:  
      ![Set up in desktop button](../img/github-set-up-in-desktop.png)
   6. Choose a folder on your computer for the local copy of the repository
      and click **Clone**.

It might not look like much has happened, but you now have:

-  Git running on your computer
-  A repository at an online Git host
-  A local copy of the repository on your computer

Next steps
----------

-  Take a look at `Git basics <../getting-started-git-basics/>`__
-  Try setting up a `Git wiki <../../recipes/recipes-git-wiki>`__
