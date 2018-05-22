module PUBG
  # Configuration options for {Client}
  module Configurable
    attr_accessor :access_token, :region
    attr_reader   :connection_options, :api_endpoint

    class << self
      def keys
        @keys || %i[access_token region connection_options api_endpoint]
      end
    end

    def configure
      yield self
    end

    def reset!
      PUBG::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", PUBG::Default.options[key])
      end
      self
    end

    private

    def options
      Hash[PUBG::Configurable.keys.map { |key| [key, instance_variable_get(:"@#{key}")] }]
    end
  end
end
