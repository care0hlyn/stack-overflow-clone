class Question < ActiveRecord::Base

  validates_presence_of :user_id, :text

  belongs_to :user
  has_many :answers
  has_many :votes



end
