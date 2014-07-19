class Member
  include HTTParty

  base_uri 'https://api.meetup.com'

  def self.all
    options = { query: { group_id: '14688692', key: ENV['MEETUP_API_KEY'] } }
    response = self.get('/2/profiles.json', options)
    response['results']
  end
end
