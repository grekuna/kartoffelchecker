require "application_system_test_case"

class SortensTest < ApplicationSystemTestCase
  setup do
    @sorten = sortens(:one)
  end

  test "visiting the index" do
    visit sortens_url
    assert_selector "h1", text: "Sortens"
  end

  test "creating a Sorten" do
    visit sortens_url
    click_on "New Sorten"

    fill_in "Code", with: @sorten.code
    fill_in "Sorte", with: @sorten.sorte
    click_on "Create Sorten"

    assert_text "Sorten was successfully created"
    click_on "Back"
  end

  test "updating a Sorten" do
    visit sortens_url
    click_on "Edit", match: :first

    fill_in "Code", with: @sorten.code
    fill_in "Sorte", with: @sorten.sorte
    click_on "Update Sorten"

    assert_text "Sorten was successfully updated"
    click_on "Back"
  end

  test "destroying a Sorten" do
    visit sortens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sorten was successfully destroyed"
  end
end
