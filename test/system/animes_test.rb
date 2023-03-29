require "application_system_test_case"

class AnimesTest < ApplicationSystemTestCase
  setup do
    @anime = animes(:one)
  end

  test "visiting the index" do
    visit animes_url
    assert_selector "h1", text: "Animes"
  end

  test "should create anime" do
    visit animes_url
    click_on "New anime"

    fill_in "Aired end", with: @anime.aired_end
    fill_in "Aired start", with: @anime.aired_start
    fill_in "Description", with: @anime.description
    fill_in "Episodes", with: @anime.episodes
    fill_in "Premiered", with: @anime.premiered
    fill_in "Score", with: @anime.score
    fill_in "Title english", with: @anime.title_english
    fill_in "Title native", with: @anime.title_native
    click_on "Create Anime"

    assert_text "Anime was successfully created"
    click_on "Back"
  end

  test "should update Anime" do
    visit anime_url(@anime)
    click_on "Edit this anime", match: :first

    fill_in "Aired end", with: @anime.aired_end
    fill_in "Aired start", with: @anime.aired_start
    fill_in "Description", with: @anime.description
    fill_in "Episodes", with: @anime.episodes
    fill_in "Premiered", with: @anime.premiered
    fill_in "Score", with: @anime.score
    fill_in "Title english", with: @anime.title_english
    fill_in "Title native", with: @anime.title_native
    click_on "Update Anime"

    assert_text "Anime was successfully updated"
    click_on "Back"
  end

  test "should destroy Anime" do
    visit anime_url(@anime)
    click_on "Destroy this anime", match: :first

    assert_text "Anime was successfully destroyed"
  end
end
