module CurrencyExchange
    
  class FileReader
    attr_reader :path

      def initialize(path)
        @path = path
      end

      def read
        json = File.read(path)
        return data = JSON.parse(json)
      end
  end
end
