require "application_system_test_case"

class RankingsTest < ApplicationSystemTestCase
  setup do
    @ranking = rankings(:one)
  end

  test "visiting the index" do
    visit rankings_url
    assert_selector "h1", text: "Rankings"
  end

  test "should create ranking" do
    visit rankings_url
    click_on "New ranking"

    fill_in "Ppfumble", with: @ranking.PPfumble
    fill_in "Ppfgm", with: @ranking.ppfgm
    fill_in "Ppint", with: @ranking.ppint
    fill_in "Pppasstd", with: @ranking.pppasstd
    fill_in "Pppassyard", with: @ranking.pppassyard
    fill_in "Ppr", with: @ranking.ppr
    fill_in "Pprectd", with: @ranking.pprectd
    fill_in "Pprecyard", with: @ranking.pprecyard
    fill_in "Pprushtd", with: @ranking.pprushtd
    fill_in "Pprushyard", with: @ranking.pprushyard
    fill_in "Year", with: @ranking.year
    click_on "Create Ranking"

    assert_text "Ranking was successfully created"
    click_on "Back"
  end

  test "should update Ranking" do
    visit ranking_url(@ranking)
    click_on "Edit this ranking", match: :first

    fill_in "Ppfumble", with: @ranking.PPfumble
    fill_in "Ppfgm", with: @ranking.ppfgm
    fill_in "Ppint", with: @ranking.ppint
    fill_in "Pppasstd", with: @ranking.pppasstd
    fill_in "Pppassyard", with: @ranking.pppassyard
    fill_in "Ppr", with: @ranking.ppr
    fill_in "Pprectd", with: @ranking.pprectd
    fill_in "Pprecyard", with: @ranking.pprecyard
    fill_in "Pprushtd", with: @ranking.pprushtd
    fill_in "Pprushyard", with: @ranking.pprushyard
    fill_in "Year", with: @ranking.year
    click_on "Update Ranking"

    assert_text "Ranking was successfully updated"
    click_on "Back"
  end

  test "should destroy Ranking" do
    visit ranking_url(@ranking)
    click_on "Destroy this ranking", match: :first

    assert_text "Ranking was successfully destroyed"
  end
end
