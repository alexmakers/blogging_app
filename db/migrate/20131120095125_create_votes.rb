class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
