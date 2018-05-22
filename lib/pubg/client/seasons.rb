module PUBG
  class Client
    # Methods for Seasons API
    module Seasons
      # List all sessions for region
      #
      # @example List Seasons
      #   client.seasons
      # @see https://documentation.playbattlegrounds.com/en/players-endpoint.html#/Seasons/get_seasons
      def seasons
        path = ['shards', @region, 'seasons'].join('/')
        get(path)
      end
    end
  end
end
