#!/bin/bash

pandoc -o directive-dreams.docx \
	title.rst \
	../getting-started.rst \
	../rest/index.rst \
	../rest/rest-basics.rst \
    	../rest/interpreted-text.rst \
	../rest/explicit-markup.rst \
     	../rest/links.rst \
    	../rest/tables.rst \
    	../rest/images.rst \
    	../rest/other-useful-directives.rst \
    	../tools/index.rst \
	../tools/editors.rst \
	../tools/storage.rst \
	../tools/git.rst \
	../tools/git-setup.rst \
	../tools/git-basics.rst \
	../tools/publishing.rst \
	../recipes/index.rst \
    	../recipes/recipes-notes.rst \
    	../recipes/recipes-git-wiki.rst \
    	../recipes/recipes-centralized-workflow.rst \
    	../recipes/recipes-gitflow.rst \
    	../recipes/recipes-hugo.rst \
   	../recipes/recipes-sphinx.rst \
    	../recipes/recipes-pandoc-word.rst \
    	../recipes/recipes-pandoc-ebook.rst \
    	../recipes/recipes-pandoc-pdf.rst \
    	../recipes/recipes-pandoc-web.rst \
    	../recipes/recipes-slides.rst \
    	../recipes/recipes-slides-dzslides.rst \
	../resources/index.rst \
	../resources/restructuredtext-cheatsheet.rst \
    	../resources/templates.rst \
	../resources/syntax-comparison.rst \
	../resources/glossary.rst \
    	../resources/links.rst 
