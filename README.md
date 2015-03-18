# Refile::Sequel

[Sequel](http://sequel.jeremyevans.net/) extension for [Refile](https://github.com/refile/refile).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'refile-sequel'
```

## Usage

```ruby
require "refile/sequel"

Sequel::Model.extend Refile::Sequel::Attachment

class User < Sequel::Model
  attachment :profile_image
end
```

## License

[MIT](/LICENSE.txt)
