# These are just suggested definitions to get you started.  Please feel
# free to make any changes at all as you see fit.


# http://test-unit.github.io/
require 'test/unit'
require 'currency_exchange'
require 'date'

class CurrencyExchangeTest < Test::Unit::TestCase
  def setup
  end

  def test_to_source_currency_exchange
    correct_rate = 0.8769622029290537
    assert_equal correct_rate, CurrencyExchange.rate(Date.new(2018, 11, 22), "USD", "EUR")
  end

  def test_from_source_currency_exchange
    correct_rate = 1.1403
    assert_equal correct_rate, CurrencyExchange.rate(Date.new(2018, 11, 22), "EUR", "USD")
  end

  def test_other_currency_exchange1
    correct_rate = 12.466457874183197
    assert_equal correct_rate, CurrencyExchange.rate(Date.new(2018, 10, 18), "CZK", "HUF")
  end

  def test_other_currency_exchange2
    correct_rate = 2.6138477867266032
    assert_equal correct_rate, CurrencyExchange.rate(Date.new(2018, 9, 17), "SGD", "ILS")
  end

  def test_empty_date
    assert_raise StandardError do
      CurrencyExchange.rate(nil, "JPY", "USD")
    end
  end

  def test_empty_from_currency
    assert_raise StandardError do
      CurrencyExchange.rate(Date.new(2018,11,22), nil, "USD")
    end
  end

  def test_empty_to_currency
    assert_raise StandardError do
      CurrencyExchange.rate(Date.new(2018,11,22), "USD", nil)
    end
  end
end
