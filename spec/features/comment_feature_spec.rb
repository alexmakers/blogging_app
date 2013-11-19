describe 'commenting' do
  
  before do
    Post.create(title: 'Foobar', body: 'Some text here')
  end

  context 'article page' do
    before do
      visit '/posts'
      click_link 'Foobar'
    end

    it 'has no comments initially' do
      expect(page).to have_content '0 comments'
    end

    it 'can post comments' do
      fill_in 'Comment', with: 'This is great'
      click_button 'Post comment'

      expect(page).to have_content '1 comment'
      expect(page).to have_content 'This is great'
    end
  end
end