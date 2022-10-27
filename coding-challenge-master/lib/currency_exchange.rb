module CurrencyExchange
  require 'json'
  require 'date'
  require_relative 'classes/file_reader'
  require_relative 'classes/file_finder'
  require_relative 'classes/exchange_rate'

  # Gets the file path for the data source.
  # Reads and stores the data from the given source.
  # Returns the exchange rate between two currencies at a date.
  def self.rate(date, from_currency, to_currency)
    source_filename = "eurofxref-hist-90d.json"
    path = FileFinder.new(source_filename).get_filepath
    data = FileReader.new(path).get_json_data
    output = ExchangeRate.new(data).get_rate(date, from_currency, to_currency)
    return output
  end
end