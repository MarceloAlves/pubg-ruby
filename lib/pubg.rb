require 'pubg/client'
require 'pubg/default'

# Ruby gem for the PUBG API
module PUBG
  class << self
    include PUBG::Configurable

    def client
      return @client if defined?(@client)
      @client = PUBG::Client.new(options)
    end
  end
end

PUBG.reset!
