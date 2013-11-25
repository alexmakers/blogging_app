require 'spec_helper'

def create_a_user
  @user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
end

describe 'blog posts index page' do

  it 'should display a list of posts' do
    create(:post, title: "Hello world")
    visit '/posts'

    expect(page).to have_content "Hello world"
  end

end

describe 'adding a new post' do

  before do
    login_as create(:user)
  end

  it 'can be added from the New Post form' do
    visit '/posts/new'

    fill_in 'Title', with: 'Hello world'
    fill_in 'Body', with: 'Lorem ipsum'
    click_button 'Save post'

    expect(page).to have_content 'Post saved'
  end
end