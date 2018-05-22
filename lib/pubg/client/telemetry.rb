module PUBG
  class Client
    # Methods for Telemetry API
    #
    # @see https://documentation.playbattlegrounds.com/en/telemetry.html
    module Telemetry
      # Fetch telemetry by URL
      #
      # @param url [String] Telemetry URL
      # @example Fetch Telemetry
      #   client.telemetry('https://telemetry-cdn.playbattlegrounds.com/bluehole-pubg/xbox-na/2018/05/18/09/27/b6cb61e0-5a7d-11e8-a5e4-0a58647ff40d-telemetry.json')
      # @see https://documentation.playbattlegrounds.com/en/telemetry.html#to-retrieve-telemetry-data
      def telemetry(url)
        Sawyer::Agent.call(:get, url).data
      end
    end
  end
end
