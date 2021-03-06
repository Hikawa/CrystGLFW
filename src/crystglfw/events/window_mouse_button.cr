module CrystGLFW
  module Event
    # A WindowMouseButtonEvent is generated by the `Window#on_mouse_button` callback and contains a `MouseButton` along with
    # an interface to determine what action occurred with the key.
    struct WindowMouseButton < Any
      include Modifiers

      getter window       : Window
      getter mouse_button : MouseButton
      getter action       : Action

      # :nodoc:
      def initialize(window : Window, mouse_button : MouseButton, action : Action, modifiers : Int32)
        @window       = window
        @mouse_button = mouse_button
        @action       = action
        set_modifiers modifiers
      end

    end
  end
end
