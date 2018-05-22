module PUBG
  class Client
    # Methods for Status API
    #
    # @see https://documentation.playbattlegrounds.com/en/status-endpoint.html
    module Status
      # Get the current API Status
      #
      # @example Get Status
      #   client.status
      # @see https://documentation.playbattlegrounds.com/en/status-endpoint.html#/Status/get_status
      def status
        get('status')
      end
    end
  end
end
