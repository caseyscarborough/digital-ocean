module DigitalOcean
  class Client

    include HTTParty
    base_uri Default::API_ENDPOINT

    attr_accessor :client_id, :api_key

    def initialize(options={})
      if options[:client_id] && options[:api_key]
        @client_id = options[:client_id]
        @api_key = options[:api_key]
      end
    end
    private

      def auth_params
        @client_id && @api_key ? { :client_id => @client_id } : { :api_key => @api_key }
      end

  end
end