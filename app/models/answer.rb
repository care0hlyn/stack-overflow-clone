class Answer < ActiveRecord::Base

  validates :text, :presence => true
  validates :user_id, :presence => true
  validates :question_id, :presence => true

  belongs_to :user
  belongs_to :question
  has_many :votes

  def score
    self.votes.count
  end



end
