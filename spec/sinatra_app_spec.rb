require 'spec_helper'

describe SinatraApp do

  it 'unfortunately conceals errors and does not break tests where it should' do
    visit '/'
    expect(page).to have_content 'hello world'
  end

end