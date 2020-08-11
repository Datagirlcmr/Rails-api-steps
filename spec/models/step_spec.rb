require 'rails_helper'

RSpec.describe Step, type: :model do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:steps) }
end
