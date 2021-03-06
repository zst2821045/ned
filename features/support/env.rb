require_relative '../../lib/opener/ned'
require 'rspec'
require 'tempfile'

def kernel_root
  File.expand_path("../../../", __FILE__)
end

def kernel
  return Opener::Ned.new(:enable_time => false)
end

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
