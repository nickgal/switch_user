# frozen_string_literal: true

module SwitchUser
  class Engine < Rails::Engine
    initializer 'switch_user.view' do
      ActiveSupport.on_load(:action_view) do
        require 'switch_user_helper'
        include SwitchUserHelper
      end
    end
  end
end
