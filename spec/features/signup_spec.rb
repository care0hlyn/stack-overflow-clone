
describe "the signup process" do
  it "signs a user up who uses the right name, email and password" do
    visit '/users/new'
    fill_in 'Name', with: 'frankie'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign Up'
    expect(page).to have_content "Log Out"
  end

  it "doesn't sign up a user who uses the wrong name, email and password" do
    visit '/users/new'
    fill_in 'Name', with: 'user'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'wrong'
    fill_in 'Password confirmation', with: 'right'
    click_button 'Sign Up'
    expect(page).to have_content 'invalid'
  end
end
