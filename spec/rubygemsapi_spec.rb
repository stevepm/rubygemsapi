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
end