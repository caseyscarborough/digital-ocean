# Digital Ocean API

This gem is a simple and easy-to-use wrapper for Digital Ocean's API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'digital-ocean'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install digital-ocean
```

## Usage

To use the API methods, you'll need to retrieve your client ID and API key from Digital Ocean after logging in. You can then instantiate a new client and use the API methods.

```ruby
# Create a new client
client = DigitalOcean.client(
  :client_id => "202cd122bd857fb65d80bf804ef47fde",
  :api_key   => "cd7d64f341654411eadb4b32e2c6a2ae"
)
```

### Droplets

__Retrieve a list of your droplets__

This method returns an array of droplets each with the following attributes: backups_active, created_at, id, image_id, ip_address, locked, name, private_ip_address, region_id, size_id, status

```ruby
client.droplets
# => #<Hashie::Mash droplets=[#<Hashie::Mash backups_active=false cre...
```

__Retrieve a droplet by its ID__

This method retrieves a single droplet by its ID.

```ruby
client.droplet(145822)
```

__Create a new droplet__

This method creates a new droplet. It takes the following parameters:

* `:name` _Required_, String, this is the name of the droplet - must be formatted by hostname rules.
* `:size_id` _Required_, Numeric, this is the id of the size you would like the droplet created at.
* `:image_id` _Required_, Numeric, this is the id of the image you would like the droplet created with.
* `:region_id` _Required_, Numeric, this is the id of the region you would like your server in.
* `:ssh_key_ids` _Optional_, Numeric CSV, comma separated list of ssh_key_ids that you would like to be added to the server.
* `:private_networking` _Optional_, Boolean, enables a private network interface if the region supports private networking.

```ruby
client.new_droplet(
  :name        => 'test.example.com',
  :size_id     => 63,
  :region_id   => 4,
  :ssh_key_ids => "ssh-key rsa e5ab78..,ssh-key rsa...",
  :private_networking => true
)
```

### Regions

__Retrieve a list of available regions__

This method returns a list of regions that are available to create a new droplet in with info about each location.

```ruby
client.regions
```

### Sizes

__Retrieve a list of available sizes__

This method retrieves a list of available sizes for a new droplet along with information about each size.

```ruby
client.sizes
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
