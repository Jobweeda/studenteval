require "rails_helper"

describe "Signing up" do
  before do
    visit batches_url
    click_on "Sign Up"
    fill_in "user_email", with: "al@pa.ca"
  end

  context "when password is too short" do
    it "does not allow the user to sign up" do
      fill_in "user_password", with: "feck"
      click_on "Sign up"
      expect(page).to have_content "Password is too short"
    end
  end

  context "when password is long enough" do
    it "creates an account for a new user" do
      fill_in "user_password", with: "mylife"
      click_on "Sign up"
      expect(page).to have_content "Welcome! You have signed up successfully."
    end
  end
end
