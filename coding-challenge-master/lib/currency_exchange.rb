module CurrencyExchange
  require 'json'

  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.
  def self.rate(date, from_currency, to_currency)
    if from_currency == 'EUR'
      json = File.read('eurofxref-hist-90d.json')
      data = JSON.parse(json)
      exchange_rate = data[date][to_currency]
      puts exchange_rate
    end
  end

  self.rate("2018-12-10", "EUR", "JPY")

end
