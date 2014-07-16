require "RubyGemsApi/version"
require 'faraday'
require 'json'

class RubyGems
  def initialize(gem_name)
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

  def version_downloads
    @body["version_downloads"]
  end

  def urls
    url_hash = {}
    if @body["bug_tracker_uri"]
      url_hash[:bug_tracker_uri] = @body["bug_tracker_uri"]
    end
    if @body["documentation_uri"]
      url_hash[:documentation_uri] = @body["documentation_uri"]
    end
    if @body["gem_uri"]
      url_hash[:gem_uri] = @body["gem_uri"]
    end
    if @body["homepage_uri"]
      url_hash[:homepage_uri] = @body["homepage_uri"]
    end
    if @body["mailing_list_uri"]
      url_hash[:mailing_list_uri] = @body["mailing_list_uri"]
    end
    if @body["project_uri"]
      url_hash[:project_uri] = @body["project_uri"]
    end
    if @body["source_code_uri"]
      url_hash[:source_code_uri] = @body["source_code_uri"]
    end
    if @body["wiki_uri"]
      url_hash[:wiki_uri] = @body["wiki_uri"]
    end
    url_hash
  end

  def description
    @body["info"]
  end

end