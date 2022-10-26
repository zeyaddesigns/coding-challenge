module CurrencyExchange
  class ExchangeRate
    attr_reader :data, :date, :from_currency, :to_currency

    def initialize(data, date, from_currency, to_currency)
        @data = data
        @date = date
        @from_currency = from_currency
        @to_currency = to_currency
    end

    def get_rate()
      if from_currency == 'EUR'
        exchange_rate = data[date][to_currency]
        puts exchange_rate
      end
    end

  end
end