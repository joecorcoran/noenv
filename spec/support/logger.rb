unless defined?(Rails)

  module Rails
    def self.logger
      @logger ||= begin
        require 'stringio'
        Logger.new(StringIO.new)
      end
    end
  end

end
