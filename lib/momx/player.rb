module Momx

  class Player

    def initialize
      @player = ::Omxplayer.instance
    end

    def play(filename)
      @player.open(filename)
    end

    def active?
      true
    end

    def playback_loop
      loop {}
    end

    def player_respond_to?(method)
      @player.respond_to?(method)
    end

    def player_method_missing(method, *args, &block)
      @player.send(method, *args, &block) if player_respond_to?(method)
    end

    def increase_speed
      @player.send(:send_to_pipe, "2")
    end

    def decrease_speed
      @player.send(:send_to_pipe, "1")
    end

  end

end
