require 'rails_helper'

RSpec.describe RecreationCenter, :type => :model do
  describe '#pool?' do
  let(:recreation_center) { RecreationCenter.new(pool: pool) }
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

  describe '#fitness_center?' do
  let(:recreation_center) { RecreationCenter.new(fitness_center: fitness_center) }
    describe 'when #fitness_center == nil' do
      let(:fitness_center) { nil }
      it 'returns false' do
        expect(recreation_center.fitness_center?).to be false
      end
    end

    describe 'when #pool == No' do
      let(:fitness_center) { 'No' }
      it 'returns false' do
        expect(recreation_center.fitness_center?).to be false
      end
    end

    describe 'when #pool == Cardio Room' do
      let(:fitness_center) { 'Cardio Room' }
      it 'returns false' do
        expect(recreation_center.fitness_center?).to be true
      end
    end
  end
end
