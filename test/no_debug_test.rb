require 'test/unit'
require File.dirname(__FILE__)+'/../adder'

class NoDebugTest < Test::Unit::TestCase
  include Math

  def test_plus__num_is_zero
    assert_equal 7, Adder.new(0).plus(7)
  end


  def test_no_debugger
    debug_loaded = Gem.loaded_specs.map {|k,v| "#{k}"}.include?('ruby-debug')
    assert_equal false, debug_loaded
  end

end
