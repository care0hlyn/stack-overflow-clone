describe Answer do

  it { should validate_presence_of :text }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :question_id }
  it { should validate_presence_of :vote_id }

  it { should belong_to :user }
  it { should belong_to :question }
  it { should have_many :votes }
end
