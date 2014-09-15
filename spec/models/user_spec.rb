describe User do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :email }
  it { should validate_presence_of :password_confirmation }


end
