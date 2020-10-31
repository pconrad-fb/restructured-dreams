Markup comparison
=================

Here's a comparison of three popular markup languages:

- AsciiDoc provides powerful, flexible syntax using blocks and attributes.
- Markdown focuses on simplicity and ease of writing.
- reStructuredText uses an extensible scheme of interpreted text roles, blocks, and directives.

All three are supported in Git repositories.

+--------------------+------------------------------+--------------------------------------------+-----------------------------------------------------------+
|                    | AsciiDoc                     | Markdown                                   | reStructuredText                                          |
+====================+==============================+============================================+===========================================================+
| **Strengths**      | * Easy syntax                | * Easy syntax                              | * Extensible                                              |
|                    | * Standardized               | * Many tools available                     | * With Sphinx, easy to create docs for the web            |
|                    | * Designed for tech writing  | * Great for taking notes or writing posts  | * Many ways to create tables                              |
|                    | * Converts to DocBook        | * Can embed HTML                           | * Standardized                                            |
+--------------------+------------------------------+--------------------------------------------+-----------------------------------------------------------+
| **Weaknesses**     | * Few dedicated editors      | * No code reuse, TOCs, or internal linking | * Formatting of headings is inconvenient and inconsistent |
|                    | * Toolchains can be complex  | * Many incompatible flavors                | * Link syntax is not intuitive                            |
|                    | * Idiosyncratic link syntax  | * Lacks admonitions and other features     | * Directives and roles are clunky                         |
|                    |                              |                                            | * Very easy to create syntax errors                       |
|                    |                              |                                            | * Few tools available                                     |
|                    |                              |                                            | * Some features rely on Sphinx                            |
+--------------------+------------------------------+--------------------------------------------+-----------------------------------------------------------+

Here's a quick comparison of the syntax. This is just to show what they look like, not exhaustive, just to give you a feeling. For example, in all 3 languages there are more ways to do links and headings than we're showing.

+--------------------+------------------------------+-----------------------+--------------------------------+
|                    | AsciiDoc                     | Markdown              | reStructuredText               |
+====================+==============================+=======================+================================+
| **Emphasis**       | \_italic_                    | | \*italic*           | \*italic*                      |
|                    |                              | | \_italic_           |                                |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Strong emphasis**| \*bold*                      | | \*\*bold**          | \*\*bold**                     |
|                    |                              | | \__bold__           |                                |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Inline code**    | \`backticks`                 | \`backticks`          | \``double backticks``          |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Bulleted list**  | | \*                         | | \*                  || \*                            |
|                    | | \-                         | | \-                  || \-                            |
|                    |                              | | \+                  || \+                            |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Numbered list**  | .                            | | 1.                  | | 1.                           |
|                    |                              |                       | | \#.                          |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Headings**       | | \= Document title          | | \# H1               | Underline with a sequence      |
|                    | | \== H1                     | | \##  H2             | of characters (flexible,       |
|                    | | \=== H2                    | | \###  H3            | figured out by the parser)     |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Semantics**      | | Block ID                   |                       || Interpreted text              |
|                    | | Role                       |                       || Explicit markup               |
|                    | | Options                    |                       || Directives                    |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Link**           | | \https://\{URL}[text]      | \[text](target)       | \`text \<target>`_             |
|                    | | link:\{relative-link}[text]|                       |                                |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Image**          | image::filename[alt]         | \!\[alt](filename)    || \.. image::filename           |
|                    |                              |                       ||    \:option: value            |
|                    |                              |                       ||    \:option: value            |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Admonition**     | NOTE: text                   |                       | \.. note::  Text               |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Comment**        | // single-line comment       | | \<!-- comment -->   | \.. comments                   |
|                    |                              | | \[//]\: \# "comment"|                                |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Table**          | Many formats including       | Grid or HTML          | Many formats                   |
|                    | from CSV                     |                       | including from CSV             |
+--------------------+------------------------------+-----------------------+--------------------------------+
| **Content reuse**  | include::file[]              |                       | | \.. literalinclude:: filename|
|                    |                              |                       | |    \:option: value           |
|                    |                              |                       | |    \:option: value           |
+--------------------+------------------------------+-----------------------+--------------------------------+
