require 'rails_helper'

feature 'User views graph links' do
  scenario 'sucess' do
    visit root_path
    expect(page).to have_link('BRL')
    expect(page).to have_link('EUR')
    expect(page).to have_link('USD')
  end
end
feature 'User views Wiki page' do

  scenario 'BRL' do
    expect_page_to_have_link('BRL')
  end
  
  scenario 'EUR' do
    expect_page_to_have_link('EUR')
  end

  scenario 'USD' do
    expect_page_to_have_link('USD')
  end
end

private

  def expect_page_to_have_link(currency)
    visit currency_path("#{{currency}}")
    expect(page).to have_link("#{{currency}}", :href => "https://en.wikipedia.org/wiki/#{currency}")
  end
