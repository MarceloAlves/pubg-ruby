require 'sawyer'
require 'pubg/connection'
require 'pubg/configurable'
require 'pubg/client/match'
require 'pubg/client/player'
require 'pubg/client/seasons'
require 'pubg/client/status'
require 'pubg/client/telemetry'

module PUBG
  # Client for PUBG API
  class Client
    include PUBG::Configurable
    include PUBG::Connection
    include PUBG::Client::Match
    include PUBG::Client::Player
    include PUBG::Client::Seasons
    include PUBG::Client::Status
    include PUBG::Client::Telemetry

    def initialize(options = {})
      PUBG::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || PUBG.instance_variable_get(:"@#{key}"))
      end
    end
  end
end
