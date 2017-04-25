require 'rails_helper'

RSpec.describe RecreationCenter, :type => :model do
  let(:recreation_center) { RecreationCenter.new(pool: pool) }
  describe '#pool?' do
    describe 'when #pool == nil' do
      let(:pool) { nil }
      it 'returns false' do
        expect(recreation_center.pool?).to be false
      end
    end

    describe 'when #pool == none' do
      let(:pool) { 'none' }
      it 'returns false' do
        expect(recreation_center.pool?).to be false
      end
    end

    describe 'when #pool == indoor' do
      let(:pool) { 'indoor' }
      it 'returns false' do
        expect(recreation_center.pool?).to be true
      end
    end
  end
end
