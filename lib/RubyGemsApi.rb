require "RubyGemsApi/version"
require 'faraday'
require 'json'

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
    @body = JSON.parse(@response.body)
  end

  def status
    @response.status
  end

  def downloads
    @body["downloads"]
  end

  def version
    @body["version"]
  end
end