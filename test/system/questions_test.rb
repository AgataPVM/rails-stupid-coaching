require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Stupid Coaching"
    assert_selector "p",  text: "Ask your coach anything"
    assert_selector "input[name='question']"
    assert_button "Ask"
  end

  test "saying 'Hello' yields a grumpy response" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "question with ? yields 'Silly question'" do
    visit ask_url
    fill_in "question", with: "What time is it?"
    click_on "Ask"
    assert_text "Silly question, get dressed and go to work!"
  end

  test "I am going to work yields 'Great!'" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"
    assert_text "Great!"
  end
end
