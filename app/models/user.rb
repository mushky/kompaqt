class User < ActiveRecord::Base
  # thumbs_up gem
  acts_as_voter     # relationship :votes will be obscured by the same named relationship from acts_as_voteable :(
  acts_as_voteable

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pics
end