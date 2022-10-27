module CurrencyExchange
  class FileReader
    attr_reader :path

    def initialize(path)
        @path = path
    end

    # Raises an exception if the file extension is not valid.
    # Reads the json file from the path and returns its data.
    def get_json_data
      file_extension = File.extname(@path).strip.downcase[1..-1]

      if file_extension.nil?
        raise StandardError.new("This is not a .json file")
      end
      
      json = File.read(path)
      return data = JSON.parse(json)
    end

    # Placeholder method for reading XML files
    def get_xml_data
      # TODO
    end

    # Placeholder method for reading YAML files
    def get_yaml_data
      # TODO
    end
    
    # Placeholder method for reading CSV files
    def get_csv_data
      # TODO
    end
  end
end
