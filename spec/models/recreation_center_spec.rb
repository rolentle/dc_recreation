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

  describe '#school_site?' do
  let(:recreation_center) { RecreationCenter.new(school_site: school_site) }
    describe 'when #school_site == nil' do
      let(:school_site) { nil }
      it 'returns false' do
        expect(recreation_center.school_site?).to be false
      end
    end

    describe 'when #school_site == No' do
      let(:school_site) { 'no' }
      it 'returns false' do
        expect(recreation_center.school_site?).to be false
      end
    end

    describe 'when #school_site == Cardio Room' do
      let(:school_site) { 'Cardio Room' }
      it 'returns false' do
        expect(recreation_center.school_site?).to be true
      end
    end
  end

  describe '#google_map_url' do
  let(:recreation_center) { RecreationCenter.new(x: x, y: y) }
    let(:x) { -1.01 }
    let(:y) { 1.01 }
    it 'returns Google map api url for x and y' do
      expect(recreation_center.google_map_url).to eq 'https://www.google.com/maps/embed/v1/place?key=this_is_a_test_key&q=1.01,-1.01'
    end
  end
end
