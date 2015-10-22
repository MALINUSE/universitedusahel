# encoding: utf-8

Refinery::I18n.configure do |config|
  config.default_locale = :fr

  config.current_locale = :fr

  config.default_frontend_locale = :fr

  config.frontend_locales = [:en, :fr,:ar]

  config.locales = {:en=>"English", :fr=>"Français", :ar=>"Arabic"}

end
