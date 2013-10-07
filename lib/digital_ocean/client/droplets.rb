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

      # New Droplet
      #
      # This method allows you to create a new droplet.
      # @param options [Hash] A hash of options.
      # @option options [String] :name (required) The name of the droplet.
      # @option options [Integer] :size_id (required) The ID of the size you would like the droplet created at.
      # @option options [Integer] :region_id (required) The ID of the region to create the droplet at.
      # @option options [String] :ssh_key_ids (optional) Comma separated list of SSH keys
      # @option options [Boolean] :private_networking (optional) enables private networking if supported
      # @return [Hashie::Mash]
      # @example
      #   client.new_droplet(
      #     :name        => 'test.example.com',
      #     :size_id     => 3,
      #     :region_id   => 4,
      #     :ssh_key_ids => "ssh-key rsa e5ab78..,ssh-key rsa...",
      #     :private_networking => true
      #   )
      def new_droplet(options={})
        get "/droplets/new", options
      end

    end

  end
end