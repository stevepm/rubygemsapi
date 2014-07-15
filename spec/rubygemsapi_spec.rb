require 'spec_helper'

describe RubyGemsApi do
  let (:faraday) { RubyGemsApi.instance }
  before do
    VCR.use_cassette('faraday') do

      faraday.look_up('faraday')
    end
  end
  it 'can connect to the Ruby Gems API' do
    expect(faraday.status).to eq(200)
  end

  it 'can return the total downloads' do
    expect(faraday.downloads).to eq(9585597)
  end

  it 'can return the current version' do
    expect(faraday.version).to eq("0.9.0")
  end

  it 'can return version downloads' do
    expect(faraday.version_downloads).to eq(1201239)
  end
end