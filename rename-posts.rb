# Register a hook that writes a symlink from the old slug to the new
# one.
#
# TODO: write a redirect page?
Jekyll::Hooks.register :posts, :post_write do |post|
  if not post.data['old-slug'].nil?
    path = File.join(CGI.unescape(post.url)).gsub(/^\//, '')
    path = File.join(path, "index.html") if post.url_template[/\.html$/].nil?
    old_slug = File.join(post.site.dest, post.data['old-slug'])

    # We write the symlink directly on the site destination
    FileUtils.mkdir_p(File.dirname(old_slug))
    File.symlink(path, old_slug)
  end
end
