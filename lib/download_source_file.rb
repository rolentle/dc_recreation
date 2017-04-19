class DownloadSourceFile
  def self.execute
    Faraday.get('https://opendata.arcgis.com/datasets/7122c1c815314588abe5c1864da8a355_3.csv')
  end
end
