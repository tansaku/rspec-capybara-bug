require 'spec_helper'

describe SinatraApp do

  it 'unfortunately conceals sinatra errors not detected due to source code pulled into error page' do
    visit '/sinatra_error'
    save_and_open_page
    expect(page).to have_content '2iuwqo7ykhg23uikqwdjg2kh3ihqwdqkwj'
  end

  it 'and fails correctly as long as there are no sinatra errors' do
    visit '/normal_page'
    expect(page).to have_content 'A random string'
  end

end