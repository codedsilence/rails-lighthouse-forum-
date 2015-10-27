class PostsController < ApplicationController

	def index
		@posts = [
			{
				title: "Superstar",
				author: "Carly Rae Jepson",
				text: <<-eos.gsub(/\s+/," ").strip
					Jepson has been my music idol since I started writing songs back when I was 4.
				eos
			},				
			{
				title: "Basketball Idol",
				author: "Steve Nash",
				text: <<-eos.gsub(/\s+/, " ").strip
					Dude had moves nobody had ever seen. Breaking ankles.
				eos
			},
		]
	end

	def post0
			@post = {
				title: "Superstar",
				author: "Carly Rae Jepson",
				text: <<-eos.gsub(/\s+/," ").strip
					Jepson has been my music idol since I started writing songs back when I was 4.
				eos
			}
	end

	def post1
		@post = {
			title: "Superstar",
			author: "Carly Rae Jepson",
			text: <<-eos.gsub(/\s+/," ").strip
			Jepson has been my music idol since I started writing songs back when I was 4.
			eos
		}

	end

end