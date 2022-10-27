# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, tests, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

1. Install gems:

```
bundle install
```

2. Run tests:

```
bundle exec ruby test/run_tests.rb
```

3. Start a console session & load the template library:

```
bundle exec irb -I lib -r ./lib/currency_exchange.rb
```

4. Calculate an exchange rate:

```
CurrencyExchange.rate(Date.new(2018, 11, 22), "USD", "GBP")
```

## Your Design Decisions

- The user can input the file name for the source data in `source_filename` variable through the `rate` method in `currency_exchange`. Three classes are then use to call `get_filepath`, `get_json_data`, and `get_rate` before outputing the equivalent exchange rate.

- `FileReader` class includes placeholder methods for reading other file types such as XML, YAML and CSV. The user can then call these methods as required from `currency_exchange` after placing the file in the data directory.

- The user can alter the path to find the source data file within the `FileFinder` class as required.

- The `source_currency` is set to EUR by default. This can however be changed as required in order to accomodate other currencies. This can be done through the `ExchangeRate` class by changing the value for `source_currency` at the `initialize` method.

