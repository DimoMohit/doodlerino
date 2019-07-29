require 'rails_helper'

RSpec.describe Doodle, type: :model do
  it { is_expected.to validate_uniqueness_of(:path) }
  it { is_expected.to belong_to(:user) }
end
