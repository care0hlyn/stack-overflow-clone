class Vote < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :answer_id, :presence => true

  belongs_to :user
  belongs_to :answer

end
