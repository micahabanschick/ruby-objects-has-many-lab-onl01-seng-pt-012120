class Author 
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count +=1
  end
  
  def posts 
    arr = [] #@songs
    Post.all.each do |post|
      if post.author_name == @name
        arr << post 
      end 
    end
    arr
    #binding.pry
  end 
  
  def self.post_count 
    Post.all.length #@@post_count
  end 
end 