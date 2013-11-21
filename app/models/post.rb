class Post < ActiveRecord::Base
  has_many :comments
  has_many :votes

  def votes_total
    return nil if (upvotes + downvotes).empty?
    upvotes.size - downvotes.size
  end

  private

  def upvotes
    votes.up
  end

  def downvotes
    votes.down
  end
end