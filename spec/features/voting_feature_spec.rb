require 'spec_helper'

describe 'voting' do

  context 'logged in' do

    before do
      login_as create(:user)
    end

    it 'keeps track of the vote totals', js: true do
      create(:post)
      visit '/posts'
      click_button '⬆'

      expect(page).to have_css '.votes-count', text: '1'
    end

  end

  context 'logged out' do
    
    it 'does not allow me to vote', js: true do
      create(:post)
      visit '/posts'
      click_button '⬆'

      expect(page).to have_css '.votes-count', text: ''
    end

  end
  
end