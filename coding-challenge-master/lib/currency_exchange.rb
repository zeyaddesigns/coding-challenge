module CurrencyExchange
  require 'json'
  require 'date'
  require_relative 'classes/file_reader'
  require_relative 'classes/exchange_rate'

  def self.rate(date, from_currency, to_currency)
    data = FileReader.new(self.file_path).read_json
    output = ExchangeRate.new(data, date, from_currency, to_currency).get_rate
    return output
  end

  def self.file_path
    source_file_name = "eurofxref-hist-90d.json"
    data_file_path = File.join(File.dirname(__FILE__), "..", "data")
    File.join(data_file_path, source_file_name)
  end
end