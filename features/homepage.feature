Feature: Blagger homepage
  In order to use the Blagger blogging platform
  As reader of blogs
  I want there to be a homepage

  Scenario: User browses the list of posts
    Given there is a blog post with the title of "My first blog post"
    When I am on the homepage
    Then I should see "My first blog post"

