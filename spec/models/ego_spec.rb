require 'rails_helper'

RSpec.describe Ego, type: :model do
  before do
    @ego = FactoryGirl.create(:ego)
  end

  describe 'recognize' do
    it 'should be present' do
      @ego.recognize = nil

      expect(@ego).not_to be_valid
    end
  end
end
