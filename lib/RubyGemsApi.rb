require "RubyGemsApi/version"
require 'faraday'

module RubyGemsApi
  class << self
    def instance
      ins = Object.new
      ins.extend RubyGemsApi
      ins
    end
  end

  def look_up(gem_name)
    @response = Faraday.get "https://rubygems.org/api/v1/gems/#{gem_name}.json"
    @gem_name = gem_name
  end

  def status
    @response.status
  end
end