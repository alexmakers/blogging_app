require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

def create_a_post
  Post.create(title: 'Hello world', body: 'Hellloooooo')
end

def create_a_user
  @user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
end

describe 'voting' do

  context 'logged in' do

    before do
      create_a_user
      login_as @user
    end

    it 'keeps track of the vote totals', js: true do
      create_a_post
      visit '/posts'
      click_button '⬆'

      expect(page).to have_css '.votes-count', text: '1'
    end

  end

  context 'logged out' do
    
    it 'does not allow me to vote', js: true do
      create_a_post
      visit '/posts'
      click_button '⬆'

      expect(page).to have_css '.votes-count', text: ''
    end

  end
  
end