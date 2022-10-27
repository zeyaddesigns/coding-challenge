module CurrencyExchange
  class ExchangeRate

    attr_reader :data, :source_currency

    def initialize(data, source_currency = 'EUR')
        @data = data
        @source_currency = source_currency
    end

    # Raises an exception if date, from_currency and to_currency are not valid
    # Returns the exchange rate value at a given date and currency after comparing it with the source currency
    def get_rate (date, from_currency, to_currency)
      if date.nil?
        raise StandardError.new('Date must be specified')
      elsif from_currency.nil?
        raise StandardError.new('from_currency must be specified')
      elsif to_currency.nil?
        raise StandardError.new('to_currency must be specified')
      end

      if (from_currency == source_currency)
        from_rate = 1
      else
        from_rate = data[date.iso8601][from_currency]
      end
      
      if (to_currency == source_currency)
        to_rate = 1
      else
        to_rate = data[date.iso8601][to_currency] 
      end

      return to_rate/from_rate

      end
  end
end