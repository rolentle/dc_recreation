require 'rails_helper'

describe DownloadSourceFile do
  it 'exists' do
    expect(DownloadSourceFile).to be_truthy
  end

  describe 'pulls down the files' do
    let (:results) { DownloadSourceFile.new.response }
    it 'returns 200' do
      VCR.use_cassette('get csv file') do
        expect(results.status).to be 200
      end
    end

    it 'returns a csv' do
      VCR.use_cassette('get csv file') do
        expect(results.headers['content-type']).to eq "text/csv; charset=utf-8"
      end
    end

    let (:parsed_results) { DownloadSourceFile.new.parsed_results }
    it 'can parse and return arrary of results' do
      VCR.use_cassette('get csv file') do
        expect(parsed_results.length).to be > 0
      end
    end

    let (:expected_keys) do
      %w(
      x y objectid name address use_type ward_id school_site  pool pool_name
      child_care senior_services web_url phone status xcoord ycoord addrid fitness_center
      ).map(&:to_sym)
    end

    it 'object has keys' do
      VCR.use_cassette('get csv file') do
        expect(parsed_results.first.attributes.keys).to eq expected_keys
      end
    end
  end
end
