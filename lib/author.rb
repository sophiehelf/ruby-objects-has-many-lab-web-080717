class Author

	attr_accessor :name, :post

	@@post_count = 0

	def initialize(name)
		@posts = []
		@name = name
	end

	def posts
		@posts
	end

	def add_post(post)
		@posts << post
		post.author = self
		@@post_count +=1
	end

	def self.post_count
		@@post_count
	end

	def add_post_by_title(title)
		new_post = Post.new(title)
		new_post.author = self
		@@post_count +=1
		@posts << new_post
	end

end