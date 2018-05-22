require 'spec_helper'

describe PUBG::Client do
  subject(:client) { PUBG::Client.new }

  it 'should initialize with a region' do
    expect(client.region).to be_truthy
    expect(client.region).to eq('xbox-na')
  end
end
