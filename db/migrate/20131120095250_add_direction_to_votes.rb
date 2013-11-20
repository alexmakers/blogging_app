class AddDirectionToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :direction, :string
  end
end
