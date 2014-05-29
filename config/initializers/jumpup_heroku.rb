Jumpup::Heroku.configure do |config|
  config.app = 'devinsanta'
end if Rails.env.development?