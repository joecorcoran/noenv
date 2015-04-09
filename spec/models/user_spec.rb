require 'spec_helper'

require_relative '../../app/models/user'
require_relative '../../app/models/widget'

RSpec.describe User, type: [:model, :db] do
  let(:user) { User.new(name: 'Joe') }

  describe '#say_hello' do
    it 'says hello' do
      expect(Rails.logger).to receive(:info).with('Hello from Joe')
      user.say_hello
    end
  end

  describe '#add_widget' do
    it 'adds widget to user' do
      widget = Widget.new(name: 'Thingy')
      user.add_widget(widget)
      expect(user.widgets).to include widget
    end
  end
end
