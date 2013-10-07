require 'digital_ocean/client/droplets'
require 'digital_ocean/client/regions'
require 'digital_ocean/client/sizes'

module DigitalOcean
  class Client

    include HTTParty
    base_uri Default::API_ENDPOINT

    include DigitalOcean::Client::Droplets
    include DigitalOcean::Client::Regions
    include DigitalOcean::Client::Sizes

    attr_accessor :client_id, :api_key

    def initialize(options={})
      if options[:client_id] && options[:api_key]
        @client_id = options[:client_id]
        @api_key = options[:api_key]
      end
    end

    private

      def get(url, params={})
        response = self.class.get url, :query => params.merge(auth_params)
        Hashie::Mash.new response.parsed_response
      end

      def auth_params
        { :client_id => self.client_id, :api_key => self.api_key } if @client_id && @api_key
      end

  end
end