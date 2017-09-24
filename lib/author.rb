require 'pry'

class Author
  @@post_count = 0
  attr_accessor :name #, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self   #what is the author= method here? How did we get it?
    @@post_count += 1
  end

  def add_post_by_title(title)
    # eg adele.posts.last.name = "halo"
    # improves upon above method
    post = Post.new(title)  # this is a variable not a setter
    @posts << post
    post.author = self  #this is a setter
    @@post_count += 1
  end


#SELF.methodname makes it a CLASS METHOD operating on entire class
# is this a reader??
  def self.post_count #the ttl # of posts assoc w all existing authors
    @@post_count
  end

  def posts
    @posts
  end
end
