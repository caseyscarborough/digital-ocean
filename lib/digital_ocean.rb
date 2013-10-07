require 'json'
require 'httparty'
require 'hashie'
require 'digital_ocean/version'
require 'digital_ocean/default'
require 'digital_ocean/client'

module DigitalOcean
  class << self

    def client(options={})
      @client = DigitalOcean::Client.new(options) unless @client
      @client
    end

    private 

      def method_missing(name, *args, &block)
        client.send(name, *args, &block)
      end
      
  end
end
