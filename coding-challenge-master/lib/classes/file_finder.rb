module CurrencyExchange
  class FileFinder

    attr_reader :source_filename

    def initialize(source_filename)
      @source_filename = source_filename    
    end

    # Raises an exception if the source filename is not valid
    # Returns the file path for the given source file name.
    def get_filepath
      if source_filename.nil?
        raise StandardError.new("No source file name given.")
      end

      data_file_path = File.join(File.dirname(__FILE__), "..", "..", "data")
      return File.join(data_file_path, source_filename)
    end
  end
end