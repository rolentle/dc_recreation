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
  end
end
