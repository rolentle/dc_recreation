class DownloadSourceFile
  attr_reader :response

  def self.execute
  end

  def initialize
    @response = Faraday.get('https://opendata.arcgis.com/datasets/7122c1c815314588abe5c1864da8a355_3.csv')
  end
end
