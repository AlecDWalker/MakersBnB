feature 'signing in' do

  scenario 'A user sees an error mssage if they give incorrect login details' do
  visit '/'
  click_button 'Sign up'
  fill_in "username", with: "testusername"
  fill_in "email", with: "testemail"
  fill_in "password", with: "testpassword123"
  click_button 'Create account'
  fill_in "username", with: "testusername"
  fill_in "password", with: "wrongpassword123"
  click_button 'Log in'
  expect(page).to have_content("Incorrect login details")
end
end
