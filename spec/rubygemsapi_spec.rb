require 'spec_helper'

describe RubyGemsApi do
  it 'can connect to the Ruby Gems API' do
    faraday = RubyGemsApi.instance
    faraday.look_up('faraday')
    expect(faraday.status).to eq(200)
  end
end