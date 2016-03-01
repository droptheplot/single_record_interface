# SingleRecordInterface

Concern for models which should have only one record.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'single_record_interface'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install single_record_interface

## Usage

```ruby
class Settings < ActiveRecord::Base
  include SingleRecordInterface
end

Settings.create(site_name: "My site")
#=> <Settings site_name: "My site" ... >

Settings.site_name
#=> "My site"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/droptheplot/single_record_interface. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
