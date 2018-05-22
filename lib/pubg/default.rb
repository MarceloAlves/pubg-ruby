module PUBG
  # DEfault configuration options for {Client}
  module Default
    # Default API Endpoint
    API_ENDPOINT = 'https://api.playbattlegrounds.com'.freeze

    # Default region
    REGION = 'xbox-na'.freeze

    # Default media type
    DEFAULT_MEDIA_TYPE = 'application/vnd.api+json'.freeze

    class << self
      def options
        Hash[PUBG::Configurable.keys.map { |key| [key, send(key)] }]
      end

      def api_endpoint
        API_ENDPOINT
      end

      def access_token
        ENV['PUBG_ACCESS_TOKEN']
      end

      def region
        ENV['PUBG_REGION'] || REGION
      end

      def connection_options
        {
          headers: {
            accept: DEFAULT_MEDIA_TYPE
          }
        }
      end
    end
  end
end
