Source control with Git
=======================

Any time you collaborate with others, source control is important.
Although you could just share a folder in the cloud, eventually there
will come a time when someone overwrites or deletes something important.
That’s where source control comes in. And by “source control,” I mean
Git.

With Git, you synchronize files on your computer with files on a remote
repository—usually an online Git host.

Why Git?
--------

Back in the day, there were all kinds of source control systems. The
ones I remember were all pretty easy to use, but were all
centralized—meaning that only one person could edit any given file at
any given time. Worse, it meant that there was one central source of
truth; if that were to be corrupted or lost, everything would be gone.
Git solves these problems and `doesn’t have to be hard to
use <https://levelup.gitconnected.com/git-doesnt-have-to-be-hard-e1e115be6668>`__.

Get Git
-------

You’ll need a place to host a Git repository. You might start by signing
up with a Git host. Here are a few examples:

-  `Bitbucket <https://bitbucket.org>`__
-  `GitHub <https://github.com/>`__
-  `GitLab <https://about.gitlab.com/>`__

You can use Git on the command line, but it’s even easier if you use a
Git client. For example:

-  `GitHub Desktop <https://desktop.github.com/>`__
-  `Sourcetree <https://www.sourcetreeapp.com/>`__

!!! hint While any Git client should work with any Git host, it’s not a
bad idea to use the client and host that go together. For example:

::

   - Bitbucket and Sourcetree
   - GitHub and GitHub Desktop

   This guide includes instructions for those two combinations.

Git concepts
------------

Git is different from older source control systems. A lot of things that
used to be intuitive—like the idea that we’re working on *files* and we
need to *lock* them so that someone else can’t *check them out* from the
*central repository*—have no currency in the Git world:

-  There’s no *central repository.* A central repository would represent
   both a bottleneck and a single point of failure, so why do it?
-  No one *checks out* files because there’s no central repository.
-  We don’t need to *lock* files because we don’t have to worry about
   them being *checked out*.

In fact, Git doesn’t care about *files* at all. Git only cares about
*changes.*

There’s a lot to know about Git. As a writer, you should be able to
decide how much you want to learn. You might just want to learn
*exactly* enough to do your writing and keep out of trouble. That’s the
goal here. If you want to learn more, check out `The Git
Book <https://git-scm.com/book/en/v2>`__.

What things mean in Git
~~~~~~~~~~~~~~~~~~~~~~~

Here are a few basic Git terms you’ll see in some of the recipes.

**Commit** As you make changes to the files you’re working on, saving
periodically, you also tell Git from time to time that you want your
changes tracked. This is called *committing* the changes, and is a
little like “saving changes to Git.” Git makes it easy by noticing the
changes you’ve made so you can review them and make sure you’re not
accidentally tracking something irrelevant. When you commit, you type a
little note describing the changes so that people know what you did.

A group of changes you’ve committed is also called a *commit.*

| **Stage**
| Before you commit changes, you tell Git which changes to track. This
  is called *staging.* Since changes go with files, sometimes people
  think of it as staging the files themselves—but it’s really the
  changes that Git wants to know about. If you delete a file, that’s a
  change too.

| **Repository**
| When you have committed, your changes are stored in the local
  *repository,* or *repo* for short. It’s just like that old central
  repository, but it’s on your computer.

| **Push**
| If you want other people to be able to work on your files, then you
  need to put them in an online repository (such as Bitbucket, GitHub,
  or GitLab). This is not *checking in* since the changes are already
  committed to your local repository. This is called a *push* to a
  *remote repository*.

| **Clone**
| Once something is in an online repository, an authorized person can
  *clone* their own copy of the whole repository and work on the files
  locally.

| **Pull**
| As you work on a repository you’ve cloned, you *pull* the latest
  changes from the remote repo to stay up to date.

| **Branch**
| Git lets people work in separate work streams called *branches* so
  that they don’t interfere with each other’s work. A branch is just a
  series of commits (and a commit is a group of changes). You’re always
  working in a branch, even if there’s only one branch. When you have
  several branches to work in, Git remembers the state of everything in
  each branch so that when you switch between them everything is just
  how you expect it.

Creating a new branch is called *branching,* of course. The Git command
for creating (or switching to) a branch is called, confusingly,
*checkout.*

There are different branching strategies. Some are complicated; others
are simple. The recipes in this guide use two simple branching
strategies, described in `Git basics <../tools-git-basics/>`__.

| **Merge**
| If there’s more than one branch, there always comes a time to *merge,*
  which means to add the changes from one branch into another.

Why branching is cool
~~~~~~~~~~~~~~~~~~~~~

Git keeps track of the whole history of all the changes on all the
branches. Not only does that mean you can roll back to any point in
time, it also means that when you switch branches all your files
magically change to match whatever changes you’ve made in that branch.

For example, I created a branch called ``test-branch`` based on the
``main`` branch. Working in ``test-branch``, I added a file called
``new-file.md`` which you can see in the directory:

::

   $ ls
   getting-started  img  index.md new-file.md

When I switch to ``main``, it’s not there:

::

   $ git checkout main 
   Switched to branch 'main'
   Your branch is up to date with 'origin/main'.
   $ ls
   getting-started  img  index.md

When I switch back to ``test-branch``, it’s there:

::

   $ git checkout test-branch 
   Switched to branch 'test-branch'
   $ ls
   getting-started  img  index.md  new-file.md

Branching is cool.

Next steps
----------

-  `Set up Git <../tools-git-setup/>`__
