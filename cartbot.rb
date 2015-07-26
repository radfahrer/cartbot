lib_path = File.expand_path '../lib', __FILE__
require File.join lib_path, 'keyboard_spy'
require File.join lib_path, 'wav_player'
require 'logger'

logger = Logger.new(STDOUT)

spy = KeyboardSpy.new

player = WavPlayer.new

spy.listen do |key|
	case key
	when ' '
		logger.info "playing random wav"
		player.play_random_wav
		logger.info "done playing random wav"
	end
end
