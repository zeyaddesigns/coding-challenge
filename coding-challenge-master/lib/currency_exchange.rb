module CurrencyExchange
  require 'json'
  require_relative 'classes/file_reader'
  require_relative 'classes/exchange_rate'

  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  def self.rate(date, from_currency, to_currency)
    
    data = FileReader.new("eurofxref-hist-90d.json").read()
    output = ExchangeRate.new(data, date, from_currency, to_currency).get_rate()
    return output
  
  end

  self.rate("2018-12-10", "EUR", "JPY")
end
