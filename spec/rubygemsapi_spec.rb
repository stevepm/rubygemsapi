require 'spec_helper'

describe RubyGems do
  before do
    VCR.use_cassette('faraday') do
      @faraday = RubyGems.new("faraday")
    end
  end
  it 'can connect to the Ruby Gems API' do
    expect(@faraday.status).to eq(200)
  end

  it 'can return the total downloads' do
    expect(@faraday.downloads).to eq(9588400)
  end

  it 'can return the current version' do
    expect(@faraday.version).to eq("0.9.0")
  end

  it 'can return version downloads' do
    expect(@faraday.version_downloads).to eq(1202947)
  end

  it 'can return the urls in a hash' do
    expect(@faraday.urls).to eq({
                                  :gem_uri => "http://rubygems.org/gems/faraday-0.9.0.gem",
                                  :homepage_uri => "https://github.com/lostisland/faraday",
                                  :project_uri => "http://rubygems.org/gems/faraday"
                                })
  end

  it 'can return the description' do
    expect(@faraday.description).to eq("HTTP/REST API client library.")
  end

  it 'can return dependencies' do
    expect(@faraday.dependencies).to eq({"development" => [{"name" => "bundler", "requirements" => "~> 1.0"}], "runtime" => [{"name" => "multipart-post", "requirements" => "< 3, >= 1.2"}]})
  end

  it 'can return the licenses' do
    expect(@faraday.licenses).to eq(["MIT"])
  end

  it 'can return the authors' do
    expect(@faraday.authors).to eq(["Rick Olson"])
  end

  it 'can return the name' do
    expect(@faraday.name).to eq("faraday")
  end

  it 'can return the platform' do
    expect(@faraday.platform).to eq("ruby")
  end
end