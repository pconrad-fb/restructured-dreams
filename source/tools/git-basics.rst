Git basics
==========

This page describes the workflows and commands you’ll use in the
recipes, and provides a few hints to get you out of trouble.

.. Hint:: 
   You don’t have to read this page all the way through. Just
   refer to the parts you need. The recipes link directly to the
   instructions you need.

Workflows
---------

There are many possible Git workflows, but only two in this guide:

-  **Centralized Workflow:** all work
   is done in a single branch
-  **GitHub Flow:** different pieces of
   work are done in different branches

Centralized workflow
^^^^^^^^^^^^^^^^^^^^

In the centralized workflow, everyone works on a single branch (usually
called ``main``). Changes are committed to the local repository on
each contributor’s own computer. From time to time, each user pushes
changes to a remote Git repository.

.. figure:: ../../img/git-centralized-workflow.png
   :alt: Diagram of the Git centralized workflow

Here are the operations a contributor performs when working in the
centralized workflow.

1. **Pull** - Fetch the latest changes from the remote repository to the local repository on your computer
2. **Work** - Edit your content in your favorite Markdown editor
3. **Stage and commit** - From time to time, in your Git client, type a short sentence about what you've done and save the changes to Git
4. **Push** - When your work is final, push it up to the remote repository

In the event that two people create conflicting changes, they can be
manually resolved and then merged.

Although this workflow is called “centralized,” it doesn’t really
resemble the old centralized source control model. The central remote
repository is not a single source of truth, because every contributor
has their own copy of the entire repository.

The following recipes use the centralized workflow:

-  `Edit a Git wiki <../../recipes/recipes-git-wiki/>`__
-  `Collaborate using centralized Git
   workflow <../../recipes/recipes-centralized-workflow/>`__

GitHub flow
^^^^^^^^^^^

In the GitHub flow, you start a new branch based on ``main`` whenever
you start a group of related tasks. How you organize those tasks, and
how you decide which ones belong in a branch together, is up to you.

.. figure:: ../../img/github-flow.png
   :alt: Diagram of the GitHub flow

Just like in the centralized workflow, you commit changes frequently to
your own local repository. When you push to the remote repo, you create
a copy of your branch there so that others can review your changes
before they are merged back into ``main``.

Here’s how your day looks in the GitHub flow.

1. **Pull** - Make sure you're on the ``main`` branch and sync the latest changes from the remote repository.
2. **Create a branch** - Create ("check out") a branch for working on the current part of the content.
3. **Work** - Edit your content in your favorite Markdown editor.
4. **Stage and commit** 	From time to time, in your Git client, type a short sentence about what you've done and save the changes to Git.
5. **Push** - From time to time, sync your branch up to the remote repository.
6. **Create a pull request** - When your work is ready for review, create a pull request and add reviewers. If there's more work to do before final approval, you can edit your content, stage and commit, an push to the existing pull request.
7. **Merge** - When your work is approved, merge your branch into ``main`` on the remote repository.

Merge conflicts in your working branches are less likely, because own
your branches and other people don’t necessarily work in them with you.
Conflicts are more likely to happen between your working branch and the
``main`` branch on the remote repo. Before you push your branch to the
remote repo, you can pull from ``main`` again and merge
any conflicts locally.

.. Hint:: 
    After you’ve pushed, approved, and merged your work, you can
    delete your working branch or keep it around for further work. When you
    start work on a different part of the project, remember to switch to
    ``main`` and pull again before creating a new branch.

The following recipe uses the GitHub flow:

-  `Managing docs with GitHub flow </recipes/recipes-gitflow/>`__

How to Git
----------

These are the commands that make up the steps in the Git workflows.

Pull
^^^^

The Git pull command fetches and downloads content from your remote
repository, automatically merges the changes with your local repository,
and updates everything so that your repository matches the latest
version of everything on the remote. It’s a good idea to pull after
making sure you’re on the right branch and before starting to work on
the content.

Sourcetree
""""""""""

#. Make sure you're on the right branch in the correct repository:

    - The bold text under **Branches** tells you the branch
    - The tab at the top of the screen tells you the repository

#. Select **Repository > Pull** or click the **Pull** button.  

   .. image:: ../../img/sourcetree-pull-button.png
      :alt: Sourcetree pull button


GitHub Desktop
""""""""""""""

In GitHub Desktop, you can *fetch* and *pull* separately. Fetch gets the latest
updates from origin but doesn't update your local working copy
with the changes. After you click **Fetch origin**, the button changes to 
**Pull Origin**.

#. Make sure you're on the right branch in the correct repository:

   - The bold text under **Current branch** tells you the branch
   - The bold text under **Current repository** tells you the repository

#. Select **Repository > Pull** or:  

   #. Click the **Fetch origin** button.  

      .. image:: ../../img/githubdesktop-fetch-origin-button.png
         :alt: Fetch origin button  
   #. Click the **Pull origin** button.  
      
      .. image:: ../../img/githubdesktop-pull-origin-button.png
          :alt: Pull origin button  

Linux command line
""""""""""""""""""

#. Make sure you’re on the right branch in the
   correct repository::

     $ git branch     
     * main     
     $ git remote -v     
     origin  https://github.com/pconrad-fb/markdown.git (fetch)     
     origin  https://github.com/pconrad-fb/markdown.git (push)

1. Type the ``git pull`` command::
   
      $ git pull

Stage and commit
^^^^^^^^^^^^^^^^

Git knows when you make changes to your files. When you want to save
those changes to Git, you must do two things:

-  *stage* them, which tells Git which changes you intend to keep
-  *commit* them, which saves the changes.

Sourcetree
""""""""""

In Sourcetree, you stage and commit your files in two
operations.

#. Make sure you're on the right branch in the correct repository.
#. Look for the files you changed in the Unstaged files pane. Select
   the files you want to stage&mdash;in most cases, you can just click 
   **Stage All.**  
   
   .. image:: ../../img/sourcetree-unstaged-files.png
      :alt: Unstaged files

#. Make sure you see the right files in the Staged files pane. 
 
   .. image:: ../../img/sourcetree-staged-files.png
      :alt: Staged files

#. Type a short commit message and click **Commit**.  

   .. image:: ../../img/sourcetree-commit-message.png
      :alt: Commit message

GitHub Desktop
""""""""""""""

In GitHub Desktop, you can stage and commit your
files in one step.

#. Make sure you're on the right branch in the correct repository.
#. Look for the files you changed in the Changes tab. Unselect any files you don't
   want to change&mdash;most of the time, you can leave all the checkboxes checked.
  
   .. image:: ../../img/githubdesktop-commit.png
      :alt: Changes tab

#. Type a short commit message.
#. Make sure the **Commit** button refers to the correct branch
   ("Commit to main," for example).
#. Click **Commit to [branch]**.

Linux command line
""""""""""""""""""

#. Make sure you're on the right branch in the correct repository.
#. Use ``git status`` to see what changes are not yet staged.
#. Stage any changes you plan to commit. In many cases, you can 
   stage all the changes at once like this::
      
      $ git add *
      
#. Commit the changes, adding a descriptive message::
      
      $ git commit -m "Type your descriptive message here."
      
      
.. Hint::
   If you are changing files but not adding or deleting any files, you can
   often stage and commit all in one line with ``commit -am`` like so::
       
       $ git commit -am "Type your descriptive message here."
       

Push
^^^^

Sourcetree
""""""""""

#. Make sure you're on the right branch in the correct repository.  
#. Select **Repository > Push** or click the **Push** button.  

   .. image:: ../../img/sourcetree-push-button.png
      :alt:

GitHub Desktop
""""""""""""""

#. Make sure you're on the right branch in the correct repository.
#. Select **Repository > Push** or click the **Push origin** button.  

   .. image:: ../../img/githubdesktop-push.png
      :alt: Push origin button

Linux command line
""""""""""""""""""

#. Make sure you're on the right branch in the correct repository.
#. Push, specifying the remote (usually ``origin``) and the branch. For the 
   recipes where you are working on the ``main`` branch, the command looks
   like this::
      
      $ git push origin main
      
   Of course, if git knows what branch you're on and where your remote is, you
   can sometimes just type ``git push``.

Create a branch
^^^^^^^^^^^^^^^

Sourcetree
""""""""""

#. **Pull** from ``main``.
#. Click the **Branch** button:  

   .. image:: ../../img/sourcetree-branch-button.png
      :alt: Branch button

#. Type a descriptive name and click **Create Branch**.  

   .. image:: ../../img/sourcetree-new-branch.png
      :alt: Create branch dialog

#. Look under **Branches** to see that you're on the new branch.

You can switch to a different branch by clicking it in the list of branches.

.. Hint::
   You can’t switch branches with uncommitted changes. You have to
   commit before switching to a new branch.

GitHub Desktop
""""""""""""""

#. **Pull** from ``main``.
#. Click the **Current branch** tab and click **New branch**:  

   .. image:: ../../img/github-desktop-new-branch-button.png
      :alt: New branch button

#. Type a descriptive name and click **Create branch**: 
 
   .. image:: ../../img/github-desktop-create-branch.png
      :alt: Create branch dialog

#. Click **Publish branch**:  

   .. image:: ../../img/github-desktop-publish-branch.png
      :alt: Publish branch dialog

#. Look under **Branches** to see that you're on the new branch.

You can switch to a different branch by clicking it in the list of branches.

.. Hint::
   You can’t switch branches with uncommitted changes. You have to
   commit before switching to a new branch.

Linux command line
""""""""""""""""""

#. Pull from ``main`` to make sure you have the latest changes::
       
      $ git checkout main
      Already on 'main'
      Your branch is up to date with 'origin/main'.
      $ git pull
      Already up to date.

#. Create a new branch and switch to it with ``git checkout -b``. Example::
       
      $ git checkout -b test-branch 
      Switched to a new branch 'test-branch'

You can switch to any existing branch by typing ``git checkout <branch-name>`` without the ``-b``. Example::

   $ git checkout test-branch 
   Switched to branch 'test-branch'
   

.. Hint::
   You can’t switch branches with uncommitted changes. You have to
   commit before switching to a new branch.

Create a pull request
^^^^^^^^^^^^^^^^^^^^^

Bitbucket and Sourcetree
""""""""""""""""""""""""

#. Click **Repository > Create pull request**.
#. In the dialog that appears, click **Create Pull Request On Web**:  

   .. image:: ../../img/sourcetree-create-pull-request.png
      :alt: Create pull request dialog

#. Type a description, add reviewers, and click **Create pull request**:  

   .. image:: ../../img/bitbucket-create-pull-request.png
      :alt: Create pull request form on the web

GitHub and GitHub Desktop
"""""""""""""""""""""""""

#. When you push, the banner with the Push button changes to read "Create a pull
   request from your current branch." Click **Create Pull Request**:  

   .. image:: ../../img/github-desktop-create-pull-request.png
      :alt: Create pull request button

#. The browser opens a page with a form for creating a pull request:

   .. image:: ../../img/github-create-pull-request.png
      :alt: Open a pull request form

#. Click the gear next to **Reviewers** to add reviewers:  

   .. image:: ../../img/github-pull-request-reviewers.png
      :alt: Reviewers form

#. Click **Create pull request**.

Linux command line
""""""""""""""""""

#. Take a look at the output from the ``push`` command::
   
      $ git push origin test-branch
      Enumerating objects: 14, done.
      Counting objects: 100% (14/14), done.
      Delta compression using up to 4 threads
      Compressing objects: 100% (10/10), done.
      Writing objects: 100% (10/10), 4.39 KiB | 1.10 MiB/s, done.
      Total 10 (delta 2), reused 0 (delta 0)
      remote: Resolving deltas: 100% (2/2), completed with 1 local object.
      remote: 
      remote: Create a pull request for 'test-branch' on GitHub by visiting:
      remote:      https://github.com/pconrad-fb/markdown/pull/new/test-branch
      remote: 
      To https://github.com/pconrad-fb/markdown.git
       * [new branch]      test-branch -> test-branch
   
#. Copy the URL from the line after ``Create a pull request`` into a browser.
#. Follow the instructions on the screen. If you get stuck, you can see some hints in the instructions for Bitbucket or GitHub.

Approve and merge
^^^^^^^^^^^^^^^^^

Merge your branch online in the web interface of your Git host.

Bitbucket
"""""""""

#. When your pull request is sufficiently approved, click **Merge**:

   .. image:: ../../img/bitbucket-pull-request-buttons.png
      :alt: Merge button

GitHub
""""""

#. When your pull request is sufficiently approved, click **Merge**:  

   .. image:: ../../img/github-merge-pull-request.png
      :alt: Merge button


Getting out of trouble
----------------------

If you get out into the woods with Git, there’s usually a way to get
back—but for this kind of magic, you have to go to the command line.

Working in the wrong branch
^^^^^^^^^^^^^^^^^^^^^^^^^^^

You’ve edited a file in the wrong branch. What you’d like to be able to
do is undo those changes, switch branches, then re-do them. Actually, it
would be even better to lift those changes off of the wrong branch,
laying them gently on top of the branch you meant to be in. Fortunately,
Git provides a command called ``stash`` that does exactly that.

1. Make sure you’re in the right directory.
2. Use ``git status`` to check what branch you’re on and what changes
   Git knows about.
3. Make sure you’re in the branch where you were erroneously working.
   For example::

      $ git checkout the-wrong-branch 
       Switched to branch 'the-wrong-branch'

4. Stash your uncommitted changes::

      $ git stash

5. Switch to the branch you wish you had been working in::

      $ git checkout -b the-wrong-branch 
       Switched to branch 'the-wrong-branch'

6. Use ``stash`` to apply the changes there::

      $ git stash apply

Editing the wrong file
^^^^^^^^^^^^^^^^^^^^^^

You opened a file to look at it, but then your cat walked across the
keyboard. You’re not sure what was added or deleted. You just want to go
back to the way things were at the last commit. For this, use
``checkout``—it’s not just for switching branches, but also for fixing
changes to files.

1. Make sure you’re in the right directory.
2. Use ``git status`` to check what branch you’re on and what changes
   Git knows about.
3. If necessary, switch to the correct branch. For example::

      $ git checkout the-branch 
       Switched to branch 'the-branch'

4. Use ``git status`` to see what files were accidentally modified. For
   example::

      $ git status
      On branch main
      Changes not staged for commit:
        (use "git add <file>..." to update what will be committed)
        (use "git checkout -- <file>..." to discard changes in working directory)

          modified:   dont-change-this.md

5. Use ``git checkout -- <file>`` to undo the changes. For example::

      git checkout -- dont-change-this.md

.. Hint::
   The output of the ``git status command`` tells you how to use
   ``git checkout`` this way.

Staged too soon
^^^^^^^^^^^^^^^

You edited the right file the right way, but then you added it to the
staging area too hastily. You don’t want to undo your changes to the
file, but you would like to remove it from the next commit. This is one
of the uses of ``reset``. You can also use ``reset`` to do more drastic
rollbacks—you can undo entire commits if needed.

1. Make sure you’re in the right directory.
2. Use ``git status`` to check what branch you’re on and what changes
   Git knows about.
3. If necessary, switch to the correct branch. For example::

      $ git checkout the-branch 
       Switched to branch 'the-branch'

4. Use ``git status`` to see what files were accidentally modified. For
   example::

      $ git status
      On branch main
      Changes to be committed:
        (use "git reset HEAD <file>..." to unstage)

          renamed:    README.md -> README
          modified:   dont-commit-this.md

5. Use ``git reset`` to remove the file from the next commit. For
   example::

      git reset HEAD dont-commit-this.md

.. Hint::
   The output of the ``git status command`` tells you how to use
   ``reset`` to unstage changes.

Merge conflicts
^^^^^^^^^^^^^^^

When Git is unable to automatically merge, it means that two changes
happened in the same place in the same file. That means you need to edit
the file and decide which of the two changes to keep.

When you open the file, the merge conflict looks like this::

   <<<<<<< HEAD
   Some content that was changed by one person
   =======
   Other content that someone else changed
   >>>>>>> 9af9d3b 

``HEAD`` is a pointer to the most recent commit in the branch you’re on.
The other label can be another branch name or a number representing
another commit.

All you need to do is decide which version of the content you want to
keep and then delete the merge conflict markers (``<<<<<<<``,
``=======``, ``>>>>>>>``).

After you’ve resolved all the changes in that way, just
commit again.

More trouble
^^^^^^^^^^^^

For more help and advice, check out `Dangit,
Git!?! <https://dangitgit.com/>`__
