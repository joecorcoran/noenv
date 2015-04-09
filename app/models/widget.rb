require 'active_record'

class Widget < ActiveRecord::Base
  belongs_to :user
end
