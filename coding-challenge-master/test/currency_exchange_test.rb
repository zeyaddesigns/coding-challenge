# These are just suggested definitions to get you started.  Please feel
# free to make any changes at all as you see fit.


# http://test-unit.github.io/
require 'test/unit'
require 'currency_exchange'

class CurrencyExchangeTest < Test::Unit::TestCase
  def setup
  end

  def test_non_base_currency_exchange_is_correct
    correct_rate = 1.1379
    assert_equal correct_rate, CurrencyExchange.rate("2018-12-11", "EUR", "USD")
  end

  def test_base_currency_exchange_is_correct
    correct_rate = 128.75
    assert_equal correct_rate, CurrencyExchange.rate("2018-12-11", "EUR", "JPY")
  end
end
