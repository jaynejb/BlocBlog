require 'spec_helper'

describe Post do

	before :each do
    	@post = Post.new :title, :body, :author, :category
	end

	describe "#new" do
    	it 'takes four parameters and returns a new Post object' do
        	@post.should be_an_instance_of Post
    	end
	end	

	describe "#title" do
    	it 'returns the correct title' do
        	@post.title.should eql "Title"
    	end
	end
end






	


