require "application_system_test_case"

class WebsitesTest < ApplicationSystemTestCase
  setup do
    @website = websites(:one)
  end

  test "visiting the index" do
    visit websites_url
    assert_selector "h1", text: "Websites"
  end

  test "creating a Website" do
    visit websites_url
    click_on "New Website"

    fill_in "Description", with: @website.description
    fill_in "Name", with: @website.name
    fill_in "Online", with: @website.online
    click_on "Create Website"

    assert_text "Website was successfully created"
    click_on "Back"
  end

  test "updating a Website" do
    visit websites_url
    click_on "Edit", match: :first

    fill_in "Description", with: @website.description
    fill_in "Name", with: @website.name
    fill_in "Online", with: @website.online
    click_on "Update Website"

    assert_text "Website was successfully updated"
    click_on "Back"
  end

  test "destroying a Website" do
    visit websites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Website was successfully destroyed"
  end
end
