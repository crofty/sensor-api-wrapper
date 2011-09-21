require File.expand_path('../connection', __FILE__)

module Sensor
  class Client
    include Connection

    def units
      response = connection.get "/v1.0/units"
      response.body["units"]
    end

    def journeys(unit_id,options={})
      response = get_journeys(unit_id,options)
      response.body["journeys"]
    end

    def total_distance(unit_id,options={})
      response = get_journeys(unit_id,options)
      response.body["total_distance"]
    end

    def driving_duration(unit_id,options={})
      response = get_journeys(unit_id,options)
      response.body["driving_duration"]
    end

    def acceleration_alerts(unit_id,options={})
      response = connection.get do |req|
        req.url("/v1.0/units/#{unit_id}/messages",options.merge(:usn => 20))
      end
      response.body["messages"]
    end

    def braking_alerts(unit_id,options={})
      response = connection.get do |req|
        req.url("/v1.0/units/#{unit_id}/messages",options.merge(:usn => 21))
      end
      response.body["messages"]
    end

    def update_address(message_id,options={})
      # Options needs to include :address and optionally :address_type
      connection.put "/v1.0/message/#{message_id}", {:message => options}
    end

    private

    def get_journeys(unit_id,options={})
      path = "/v1.0/units/#{unit_id}/journeys"
      connection.get do |req|
        req.url(path, options)
      end
    end
  end
end
