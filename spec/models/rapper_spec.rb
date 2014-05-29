require 'spec_helper'

describe Rapper, :type => :model do
  before { @rapper = Rapper.create!(name: 'jonny j aka fresh 2 death', age: 18) }
  subject { @rapper }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should have_many(:songs) }
  it { should validate_numericality_of(:age).is_greater_than_or_equal_to(18) }
  it { should validate_presence_of(:name).with_message('cannot rap without a name!') }

end
