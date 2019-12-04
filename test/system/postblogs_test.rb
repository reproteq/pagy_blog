require "application_system_test_case"

class PostblogsTest < ApplicationSystemTestCase
  setup do
    @postblog = postblogs(:one)
  end

  test "visiting the index" do
    visit postblogs_url
    assert_selector "h1", text: "Postblogs"
  end

  test "creating a Postblog" do
    visit postblogs_url
    click_on "New Postblog"

    fill_in "Name", with: @postblog.name
    fill_in "Text", with: @postblog.text
    click_on "Create Postblog"

    assert_text "Postblog was successfully created"
    click_on "Back"
  end

  test "updating a Postblog" do
    visit postblogs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @postblog.name
    fill_in "Text", with: @postblog.text
    click_on "Update Postblog"

    assert_text "Postblog was successfully updated"
    click_on "Back"
  end

  test "destroying a Postblog" do
    visit postblogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postblog was successfully destroyed"
  end
end
