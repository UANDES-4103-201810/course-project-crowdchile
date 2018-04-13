require "application_system_test_case"

class UserProfilesTest < ApplicationSystemTestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "visiting the index" do
    visit user_profiles_url
    assert_selector "h1", text: "User Profiles"
  end

  test "creating a User profile" do
    visit user_profiles_url
    click_on "New User Profile"

    fill_in "Age", with: @user_profile.age
    fill_in "Country", with: @user_profile.country
    fill_in "Description", with: @user_profile.description
    fill_in "Lastname", with: @user_profile.lastname
    fill_in "Mail", with: @user_profile.mail
    fill_in "Name", with: @user_profile.name
    fill_in "Password", with: @user_profile.password
    fill_in "Profession", with: @user_profile.profession
    fill_in "Telephone", with: @user_profile.telephone
    fill_in "Username", with: @user_profile.username
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "updating a User profile" do
    visit user_profiles_url
    click_on "Edit", match: :first

    fill_in "Age", with: @user_profile.age
    fill_in "Country", with: @user_profile.country
    fill_in "Description", with: @user_profile.description
    fill_in "Lastname", with: @user_profile.lastname
    fill_in "Mail", with: @user_profile.mail
    fill_in "Name", with: @user_profile.name
    fill_in "Password", with: @user_profile.password
    fill_in "Profession", with: @user_profile.profession
    fill_in "Telephone", with: @user_profile.telephone
    fill_in "Username", with: @user_profile.username
    click_on "Update User profile"

    assert_text "User profile was successfully updated"
    click_on "Back"
  end

  test "destroying a User profile" do
    visit user_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User profile was successfully destroyed"
  end
end
