require "java"

module Vaadin
  include_package "com.vaadin.ui"

  class << self
    def application=(value)
      @@application = value
      ::Application.new
    end

    def application
      @@application
    end
  end
end

class Application
  def initialize
    main = Vaadin::Window.new("Test")
    main.add_component(Vaadin::Label.new("Hello"))
    main.add_component(Vaadin::Button.new("Click Me!"))
    Vaadin.application.main_window = main
  end
end