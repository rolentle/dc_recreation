require 'csv'

class DownloadSourceFile
  attr_reader :response

  def self.execute
  end

  def initialize
    @response ||= Faraday.get('https://opendata.arcgis.com/datasets/7122c1c815314588abe5c1864da8a355_3.csv')
  end

  def parsed_results
    @parsed_results ||= CSV.parse(response.body.force_encoding('UTF-8'), headers: true, header_converters: :symbol).map do |row|
      row.to_hash
    end
  end
end
