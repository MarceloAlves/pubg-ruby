module PUBG
  class Client
    # Methods for Match API
    #
    # @see https://documentation.playbattlegrounds.com/en/matches-endpoint.html
    module Match
      # Find a single match by ID
      #
      # @param id [String] Match ID
      # @example Find match
      #   client.match('967f6581-31e2-4402-9661-8f020c68d87b')
      # @see https://documentation.playbattlegrounds.com/en/matches-endpoint.html
      def match(id)
        path = ['shards', @region, 'matches', id].join('/')
        get(path)
      end
    end
  end
end
