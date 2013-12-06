class Pic < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url

  belongs_to :user
  has_attached_file :image, :styles => { :medium => "560x560>", :thumb => "560x560>" }
  acts_as_voteable
end

class Question < ActiveRecord::Base
  acts_as_voteable
end