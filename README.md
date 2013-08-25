If you rename a post you can break urls pointing to your blog.  If you
set the "old-slug" field on the front matter to the old permalink, this
plugin will create a symlink between them.

    ---
    title: Hello world
    author: me
    old-slug: /2013/08/25/hello-world.html
    ---

    Hello!

For example, if you change permalink from "pretty" to ":title.html",
this plugin will write the post to "hello-world.html" and create a
symlink to it on "/2013/08/25/hello-world/index.html" (the "pretty"
version), so both urls will work.
