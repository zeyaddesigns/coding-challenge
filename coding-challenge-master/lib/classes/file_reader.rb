module CurrencyExchange
    
  class FileReader
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def read_json
      # raises an exception if the file extension is not valid
      file_extension = File.extname(@path).strip.downcase[1..-1]
      raise ArgumentError("This is not a .json file") if file_extension.nil?
      
      # reads the json file from the given path and returns its data
      json = File.read(path)
      return data = JSON.parse(json)
    end

    # placeholder method for reading XML files
    def read_xml
      # TODO
    end

    # placeholder method for reading YAML files
    def read_yaml
      # TODO
    end
    
    # placeholder method for reading CSV files
    def read_csv
      # TODO
    end
  end
end
