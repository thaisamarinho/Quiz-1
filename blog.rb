# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.

require "./titleize.rb"

module Blog
  class Article
    def initialize(title, body)
      @title = title
      @body = body
    end
  end
end

include Blog
include HelperMethods

class Snippet < Article

  def title
    titleize(@title)
  end

  def body
    if @body.length > 100
      print "#{@body[1..100]}..."
    else
      print @body
    end
  end

end


title = "My poem"
body = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

post1 = Snippet.new(title, body)

puts post1.title
puts post1.body

title2 = "My second poem"
body2 = "Hello world, my friend"

post2 = Snippet.new(title2, body2)

puts post2.title
puts post2.body
