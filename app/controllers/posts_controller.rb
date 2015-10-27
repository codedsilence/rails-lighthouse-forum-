class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
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