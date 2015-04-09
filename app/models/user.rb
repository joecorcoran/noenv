require 'active_record'

class User < ActiveRecord::Base
  has_many :widgets

  def say_hello
    Rails.logger.info("Hello from #{name}")
  end

  def add_widget(widget)
    widgets << widget
  end
end
