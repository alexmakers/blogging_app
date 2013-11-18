require 'spec_helper'

def create_a_post
  Post.create(title: 'Hello world', body: 'Hellloooooo')
end

describe 'blog posts index page' do

  it 'should display a list of posts' do
    create_a_post
    visit '/posts'

    expect(page).to have_content "Hello world"
  end

end