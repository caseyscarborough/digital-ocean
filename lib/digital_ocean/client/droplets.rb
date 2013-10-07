module DigitalOcean
  class Client

    # Methods for the Droplets API.
    #
    # @see https://www.digitalocean.com/api_access#api
    module Droplets

      # Show all active droplets
      #
      # This method returns all active droplets that are currently
      # running in your account. All available API information is
      # presented for each droplet.
      #
      # @return [Hashie::Mash] The list of droplets.
      # @example
      #   client.droplets
      def droplets
        get "/droplets"
      end

      # Show Droplet
      #
      # This method returns full information for a specific droplet ID.
      # 
      # @param id [Integer] The id of the droplet.
      # @return [Hashie::Mash]
      # @example
      #   client.droplet(12345)
      def droplet(id)
        get "/droplets/#{id}"
      end

      
    end

  end
end