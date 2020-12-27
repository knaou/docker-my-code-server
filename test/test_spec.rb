require 'spec_helper'
feature 'Image test' do
  scenario 'See Page' do
    sleep(3)
    visit "http://env:8080/"
    expect(page).to have_content 'Welcome'
  end
end
