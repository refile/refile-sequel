require "refile/sequel"
require "sequel"
require "tmpdir"

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.formatter = "documentation"
end

require_relative "support/refile"
require_relative "support/sequel"
