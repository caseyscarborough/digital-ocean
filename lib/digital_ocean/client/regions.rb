module DigitalOcean
  class Client

    # Methods for the regions API.
    module Regions

      # All Regions
      # 
      # This method will return all the available regions within the DigitalOcean cloud.
      # @return [Hashie::Mash] A hash of regions
      # @example
      #   client.regions
      def regions
        get "/regions"
      end

    end

  end
end