class Post
  # Access posts, files within views/posts
  # Attributes: title, url, filename, content

  # Read my list of post files.
  # Create an array of Post objects
  # with the attribute set
  # Post.all => [post, post] (returns array of post objects)
  def initialize(array)
    
  end

  def self.all
    # Dir is made for managing directories in your system.
    # Dir.glob allows us to search directories
    # Dir.glob takes an argument as a string & returns an array
    # Dir.glob(*) using the splat will search for all files
    # Dir.glob("views/posts/*.erb") returns all files ending in .erb
    # ["views/posts/myfirstblogpost.erb", "views/posts/test.erb"]
    Dir.glob("views/posts/*.erb").each do |filepath|
      a = filepath.split("/")
      new(a) #same as Post.new & self.new
    end
  end
end
