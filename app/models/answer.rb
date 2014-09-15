class Answer < ActiveRecord::Base

  validates :text, :presence => true
  validates :user_id, :presence => true
  validates :question_id, :presence => true
  validates :vote_id, :presence => true

  belongs_to :user
  belongs_to :question
  has_many :votes
end