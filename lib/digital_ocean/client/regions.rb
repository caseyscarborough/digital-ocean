module DigitalOcean
  class Client

    # Methods for the regions API.
    module Regions

      def regions
        get "/regions"
      end



    end

  end
end