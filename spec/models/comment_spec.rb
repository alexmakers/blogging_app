require 'spec_helper'

describe Comment do
  it { should belong_to :post }
end
