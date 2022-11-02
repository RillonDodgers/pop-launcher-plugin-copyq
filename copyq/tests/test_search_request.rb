#!/usr/bin/env ruby
require_relative '../lib/plugin_request'
require_relative '../lib/plugin_response'
require 'json'
require 'test/unit'

class TestSearchRequest < Test::Unit::TestCase
  def setup
    @request = PluginRequest.parse('{"Search":"copyq page 3"}')
  end

  def test_class
    assert_equal @request.class, PluginRequest::Search
  end

  def test_params
    assert_equal @request.params.size, 2
  end
end
