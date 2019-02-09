require 'spec_helper'
require 'rails_helper'
require 'webmock/rspec'

feature 'User views homepage' do
  scenario 'sucess' do
    visit root_path
    expect(page).to have_headline_text
  end

  private
    def have_headline_text
      have_text ('Values of Currency')
    end
end
