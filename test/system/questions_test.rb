# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "saying Hello yields a grumpy response from the coach" do
    visit root_url
    fill_in "question", with: "Hello"

    click_on "Ask"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
  end
end
