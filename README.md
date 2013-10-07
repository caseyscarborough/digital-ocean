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

This method returns an array of droplets each with the following attributes: _backups\_active, created\_at, id, image\_id, ip\_address, locked, name, private\_ip\_address, region\_id, size\_id, status_

```ruby
client.droplets
# => #<Hashie::Mash droplets=[#<Hashie::Mash backups_active=false cre...
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
