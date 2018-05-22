module PUBG
  class Client
    # Methods for Player API
    #
    # @see https://documentation.playbattlegrounds.com/en/players-endpoint.html
    module Player
      # Find multiple players by name or ID
      #
      # @param items [String] Comma-separated player names or account IDs
      # @example Find players
      #   client.players('user1,user2')
      #   client.players('account.6782798d64c64886a80dda0c4b22fc2a,befd8e5b2f9d4b438ae83126bfd5de61')
      # @see https://documentation.playbattlegrounds.com/en/players-endpoint.html#/Players/get_players
      def players(items)
        filter_type = items.include?('account.') ? 'playerIds' : 'playerNames'
        path = ['shards', @region, 'players'].join('/')
        options = { query: { "filter[#{filter_type}]" => items } }
        get(path, options)
      end

      # Find a single player by ID
      #
      # @param player_id [String] Player account ID
      # @example Find player by ID
      #    client.player('account.6782798d64c64886a80dda0c4b22fc2a')
      # @see https://documentation.playbattlegrounds.com/en/players-endpoint.html#/Players/get_players__id_
      def player(player_id)
        path = ['shards', @region, 'players', player_id].join('/')
        get(path)
      end
    end
  end
end
