class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to posts_path
		else
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])	
	end

	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(post_params)
			redirect_to posts_path
		else
			render :edit
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	protected

	def post_params
		params.require(:post).permit(:title, :author, :text)
	end



	# def index
	# 	@posts = [
	# 		{
	# 			title: "Superstar",
	# 			author: "Carly Rae Jepson",
	# 			text: <<-eos.gsub(/\s+/," ").strip
	# 			Jepson has been my music idol since I started writing songs back when I was 4.
	# 			eos
	# 			},				
	# 			{
	# 				title: "Basketball Idol",
	# 				author: "Steve Nash",
	# 				text: <<-eos.gsub(/\s+/, " ").strip
	# 				Dude had moves nobody had ever seen. Breaking ankles.
	# 				eos
	# 				},
	# 			]
	# 		end

	# 		def show
	# 			posts = [
	# 				{	
	# 					title: "Superstar",
	# 					author: "Carly Rae Jepson",
	# 					text: <<-eos.gsub(/\s+/," ").strip
	# 					Jepson has been my music idol since I started writing songs back when I was 4.
	# 					eos
	# 					},
	# 					{
	# 						title: "Basketball Idol",
	# 						author: "Steve Nash",
	# 						text: <<-eos.gsub(/\s+/, " ").strip
	# 						Dude had moves nobody had ever seen. Breaking ankles.
	# 						eos
	# 					}
	# 				]
	# 				@post = posts[params[:id].to_i]	
	# 			end

end