require "application_system_test_case"

class InsightsTest < ApplicationSystemTestCase
  setup do
    @insight = insights(:one)
  end

  test "visiting the index" do
    visit insights_url
    assert_selector "h1", text: "Insights"
  end

  test "should create insight" do
    visit insights_url
    click_on "New insight"

    fill_in "Insight", with: @insight.insight
    click_on "Create Insight"

    assert_text "Insight was successfully created"
    click_on "Back"
  end

  test "should update Insight" do
    visit insight_url(@insight)
    click_on "Edit this insight", match: :first

    fill_in "Insight", with: @insight.insight
    click_on "Update Insight"

    assert_text "Insight was successfully updated"
    click_on "Back"
  end

  test "should destroy Insight" do
    visit insight_url(@insight)
    click_on "Destroy this insight", match: :first

    assert_text "Insight was successfully destroyed"
  end
end
