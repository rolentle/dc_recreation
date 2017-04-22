require 'rails_helper'

describe RecreationCenterDataObject do
  let (:raw_data) do
    {
      :x=>"-77.01279478559168",
      :y=>"38.875023592504164",
      :objectid=>"1",
      :name=>"King Greenleaf Recreation Center",
      :address=>"201 N STREET SW",
      :use_type=>"RECREATION CENTER",
      :ward_id=>"6",
      :school_site=>"no",
      :pool=>"none",
      :pool_name=>"none",
      :child_care=>nil,
      :senior_services=>nil,
      :web_url=>"http://dpr.dc.gov/page/recreation-centers",
      :phone=>"(202) 645-7454",
      :status=>"Open",
      :xcoord=>"398889.94",
      :ycoord=>"134131.94",
      :addrid=>"52917",
      :fitness_center=>"Cardio Center"
    }
  end

  let(:recreation_center) do
    RecreationCenterDataObject.new(raw_data)
  end

  it 'has x coordinate' do
    expect(recreation_center.x).to eq -77.01279478559168
  end

  it 'has y coordinate' do
    expect(recreation_center.y).to eq 38.875023592504164
  end

  it 'has objectid' do
    expect(recreation_center.objectid).to eq 1
  end

  it 'has name' do
    expect(recreation_center.name).to eq "King Greenleaf Recreation Center"
  end

  it 'has address' do
    expect(recreation_center.address).to eq "201 N STREET SW"
  end

  it 'has use type' do
    expect(recreation_center.use_type).to eq "RECREATION CENTER"
  end

  it 'has ward id' do
    expect(recreation_center.ward_id).to eq 6
  end

  it 'has school type' do
    expect(recreation_center.school_site).to eq "no"
  end

  it 'has pool' do
    expect(recreation_center.pool).to eq "none"
  end

  it 'has pool name' do
    expect(recreation_center.pool_name).to eq "none"
  end

  it 'has child care' do
    expect(recreation_center.child_care).to eq nil
  end

  it 'has senior services' do
    expect(recreation_center.senior_services).to eq nil
  end

  it 'has web url' do
    expect(recreation_center.web_url).to eq "http://dpr.dc.gov/page/recreation-centers"
  end

  it 'has phone number' do
    expect(recreation_center.phone).to eq "(202) 645-7454"
  end

  it 'has status' do
    expect(recreation_center.status).to eq "Open"
  end

  it 'has xcoord' do
    expect(recreation_center.xcoord).to eq 398889.94
  end

  it 'has ycoord' do
    expect(recreation_center.ycoord).to eq 134131.94
  end

  it 'has addrid' do
    expect(recreation_center.addrid).to eq 52917
  end

  it 'has a fitness center' do
    expect(recreation_center.fitness_center).to eq "Cardio Center"
  end
end
