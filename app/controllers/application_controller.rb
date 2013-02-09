class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_tab
  class_attribute :current_tab

  def self.tab(value)
    self.current_tab = value.to_sym
  end

  def current_tab
    self.class.current_tab
  end
end
