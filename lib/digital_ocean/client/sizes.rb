module DigitalOcean
  class Client

    # Methods for the sizes API.
    module Sizes

      # All Sizes
      #
      # This method returns all the available sizes that can be used 
      # to create a droplet.
      # @return [Hashie::Mash] A list of sizes.
      def sizes
        get "/sizes"
      end

    end

  end
end