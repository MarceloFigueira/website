require 'spec_helper'

describe Member do
  it 'gets all members from meetup' do
    members = VCR.use_cassette(:member_all) { Member.all }
    expect(members.first['name']).to eql 'Moyses Santos'
    expect(members.first['bio']).to eql 'Front end developer'
  end
end
