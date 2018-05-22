module PUBG
  # Network layer
  module Connection
    def get(url, options = {})
      request :get, url, options
    end

    def agent
      @agent || Sawyer::Agent.new(api_endpoint, sawyer_options) do |http|
        http.headers[:accept] = @connection_options[:headers][:accept]
        http.authorization 'Bearer', @access_token
      end
    end

    private

    def request(method, path, options = {})
      @last_response = response = agent.call(method, Addressable::URI.parse(path.to_s), nil, options)
      response.data
    end

    def sawyer_options
      {
        links_parser: Sawyer::LinkParsers::Simple.new,
        faraday: Faraday.new(@connection_options)
      }
    end
  end
end
