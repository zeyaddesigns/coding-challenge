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
      exchange_rate = data[date][to_currency]
      raise ArgumentError("This is not a .json file") if exchange_rate.nil?

      puts exchange_rate
    end
  end
end