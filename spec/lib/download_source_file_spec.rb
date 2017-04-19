require 'rails_helper'

describe DownloadSourceFile do
  it 'exists' do
    expect(DownloadSourceFile).to be_truthy
  end

  describe 'pulls down the files and parse' do
    let (:results) { DownloadSourceFile.execute }
    it 'returns 200' do
      VCR.use_cassette('get csv file') do
        expect(results.status).to be 200
      end
    end
  end
end
