class Vote < ActiveRecord::Base
  belongs_to :post
  scope :up, -> { where(direction: 'up') }
  scope :down, -> { where(direction: 'down') }
end