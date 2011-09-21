require 'faraday'
require 'faraday_middleware'
require 'hashie'

module Sensor
  module Connection
    def connection
      return @connection if @connection
      options = {
        :url => Sensor::Config::API_URL,
        :headers => {
          :accept =>  'application/json',
          :authorization => Sensor::Config::OAUTH_HEADER,
        }
      }

      @connection = Faraday.new(options) do |builder|
        builder.use Faraday::Response::Mashify
        builder.use Faraday::Response::ParseJson
        # builder.use Faraday::Response::Logger
        builder.use Faraday::Request::UrlEncoded
        builder.adapter Faraday.default_adapter
      end
    end
  end
end
