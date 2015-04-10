require 'active_record'

Dir['app/models/**/*.rb'].each do |p|
  require_relative(File.join('../../..', p))
end
