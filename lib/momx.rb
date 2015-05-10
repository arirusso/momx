# Momx
# Control Omxplayer with MIDI
#
# (c)2015 Ari Russo
# Apache 2.0 License

# libs
require "midivid"
require "omxplayer"

# classes
require "momx/player"

module Momx

  VERSION = "0.0.1"

  def self.new(midi_input, options = {}, &block)
    player = Player.new
    MIDIVid::Context.new(midi_input, player, options, &block)
  end

end
