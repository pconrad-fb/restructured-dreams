Images and figures
------------------

Images and figures are directives that display pictures. The simplest syntax looks like this:

::

   .. image:: ../path/to/image.png

The path can be a URL, a file path, or just the image name if the image and the document are in the same directory.

You can specify options about how the picture should be rendered:

::

    .. image:: picture.jpeg
       :height: 100px
       :width: 200px
       :scale: 50%
       :alt: alternate text
       :align: right

A figure lets you add a caption, which can be several paragraphs indented the same amount and can include tables or other markup, including images.

:: 

    .. figure:: image.png
       :scale: 50%
       :alt: Severity of fire danger
    
       This map shows the relative fire danger of different counties this year.
    
       +-----------------------+---------+
       | Symbol                | Meaning |
       +=======================+=========+
       | .. image:: red.png    | Severe  |
       +-----------------------+---------+
       | .. image:: yellow.png | Moderate|
       +-----------------------+---------+
       | .. image:: green.png  | Low     |
       +-----------------------+---------+
