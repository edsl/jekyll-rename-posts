module Jekyll
  class Post
    def write_and_symlink(dest)
      write_post(dest)
      self.make_symlink
    end

    # Creates a symlink between the old slug and the new one
    def make_symlink
      if not self.data['old-slug'].nil?
        path = File.join(CGI.unescape(self.url)).gsub(/^\//, '')
        path = File.join(path, "index.html") if template[/\.html$/].nil?
        old_slug = File.join(site.dest, self.data['old-slug'])

        # We write the symlink directly on the site destination
        File.mkdir_p(File.dirname(old_slug))
        File.symlink(path, old_slug)
      end
    end

    alias_method :write_post, :write
    alias_method :write, :write_and_symlink
  end
end
