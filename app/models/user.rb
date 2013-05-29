class User < ActiveRecord::Base
  attr_accessible :author, :bio, :email, :name, :password, :twitter, :user_id, :website
end
