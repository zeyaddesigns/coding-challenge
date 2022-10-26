module CurrencyExchange
  class ExchangeRate
    attr_reader :data, :date, :from_currency, :to_currency

    def initialize(data, date, from_currency, to_currency)
        @data = data
        @date = date
        @from_currency = from_currency
        @to_currency = to_currency
    end

    # Returns the exchange rate value at a given date and currency
    # and raises an exception if the value is invalid
    def get_rate

      from_rate = (from_currency == 'EUR') ? 1 : data[date.iso8601][from_currency]
      to_rate = (to_currency == 'EUR') ? 1 : data[date.iso8601][to_currency] 

      output = to_rate/from_rate

      return output
      end
  end
end