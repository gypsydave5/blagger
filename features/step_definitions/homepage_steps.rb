Given(/^there is a blog post with the title of "(.*?)"$/) do |title|
  Post.create(title: "My first blog post")
end
