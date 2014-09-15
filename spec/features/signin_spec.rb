
describe "the signin process" do
  it "signs a user in who uses the right password" do
    visit '/sessions/new'
    user = User.create(name: 'frankie', email: 'user@example.com', password: 'password', password_confirmation: 'password')
    fill_in 'email', with: 'user@example.com'
    fill_in 'password', with: 'password'
    click_button 'Log In'
    expect(page).to have_content 'Logged in as'
  end

  it "gives a user an error who uses the wrong password" do
    visit '/sessions/new'
    fill_in 'email', with: 'user@example.com'
    fill_in 'password', with: 'wrong'
    click_button 'Log In'
    expect(page).to have_content 'invalid'
  end
end
