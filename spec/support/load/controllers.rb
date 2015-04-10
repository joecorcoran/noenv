require 'action_controller'

Dir['app/controllers/**/*.rb'].each do |p|
  require_relative(File.join('../../..', p))
end
