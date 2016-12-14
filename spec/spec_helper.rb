require 'awspec'
Awsecrets.load(secrets_path: File.expand_path('./secrets.yml', File.dirname(__FILE__)))
RSpec.configure do |config|
  config.failure_color = :magenta
  config.tty = true
  config.color = true
end
