class User < ActiveRecord::Base
  attr_accessible :author, :bio, :email, :name, :twitter, :user_id, :website
end
