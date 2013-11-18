describe 'commenting' do
    
  xit 'should be able to post comments' do

    visit '/posts'
    click_link 'Certain post'

    fill_in 'Comment', with: 'This is great'

  end
end