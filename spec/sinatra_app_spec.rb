require 'spec_helper'

describe SinatraApp do

  it 'unfortunately conceals sinatra errors and does not break tests where it should' do
    visit '/sinatra_error'
    save_and_open_page
    expect(page).to have_content 'A string that does not appear in the sinatra error page'
  end

  it 'but works as long as there are no sinatra errors' do
    visit '/sinatra_error'
    expect(page).to have_content 'A string that does not appear in the sinatra error page'
  end

  it 'and fails correctly as long as there are no sinatra errors' do
    visit '/normal_page'
    expect(page).to have_content 'A random string'
  end

end