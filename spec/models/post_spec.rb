describe Post do

  it { should have_many :comments }
  it { should have_many :votes }

  describe '.votes_total' do

    it 'should correctly calculate positive votes count' do
      post = Post.create(title: 'Hello world')

      post.stub upvotes: [double(:vote), double(:vote)]
      post.stub downvotes: [double(:vote)]

      expect(post.votes_total).to eq 1
    end

    it 'should correctly calculate negative votes count' do
      post = Post.create(title: 'Hello world')

      post.stub upvotes: [double(:vote)]
      post.stub downvotes: [double(:vote), double(:vote)]

      expect(post.votes_total).to eq -1
    end

    it 'should return nil if there are no votes' do
      post = Post.create(title: 'Hello world')

      post.stub upvotes: []
      post.stub downvotes: []

      expect(post.votes_total).to be_nil
    end
  end

end