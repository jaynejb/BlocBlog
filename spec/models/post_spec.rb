require 'spec_helper'

describe Post do

	before :each do
    	@post = Post.new(title: 'Post title', body: 'Post body', author: 'Jayne', category: 'Food')
	end


    	it "takes four parameters and returns a new Post object" do
        	@post.should be_an_instance_of Post
    	end


    	it "returns the correct title" do
        	@post.title.should eql "Post title"
    	end
end






	


