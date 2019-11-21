SitemapGenerator::Sitemap.default_host = "http://test-sitemap.sun-asterisk.com"

SitemapGenerator::Sitemap.create do
  add root_path

  Category.find_each do |category|
    add category_posts_path(category), :changefreq => 'weekly', :lastmod => category.updated_at

    category.posts.each do |post|
      add category_post_path(category, post), :changefreq => 'yearly', :lastmod => post.updated_at
    end
  end
end
