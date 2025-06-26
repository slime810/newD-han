require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "should create question" do
    visit questions_url
    click_on "New question"

    fill_in "Choices1", with: @question.choices1
    fill_in "Choices2", with: @question.choices2
    fill_in "Choices3", with: @question.choices3
    fill_in "Choices4", with: @question.choices4
    fill_in "Explanation", with: @question.explanation
    fill_in "Genre", with: @question.genre_id
    fill_in "Question", with: @question.question_id
    fill_in "Question stantement", with: @question.question_stantement
    fill_in "User", with: @question.user_id
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "should update Question" do
    visit question_url(@question)
    click_on "Edit this question", match: :first

    fill_in "Choices1", with: @question.choices1
    fill_in "Choices2", with: @question.choices2
    fill_in "Choices3", with: @question.choices3
    fill_in "Choices4", with: @question.choices4
    fill_in "Explanation", with: @question.explanation
    fill_in "Genre", with: @question.genre_id
    fill_in "Question", with: @question.question_id
    fill_in "Question stantement", with: @question.question_stantement
    fill_in "User", with: @question.user_id
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "should destroy Question" do
    visit question_url(@question)
    click_on "Destroy this question", match: :first

    assert_text "Question was successfully destroyed"
  end
end
