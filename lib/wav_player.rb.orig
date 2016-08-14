class WavPlayer
	attr_accessor :wav_program, :files, :wav_directory
	def initialize()
		self.wav_directory = File.expand_path '../../wav', __FILE__
		case RUBY_PLATFORM
		when /linux/
			self.wav_program = 'aplay'
		when /darwin|os x/
			self.wav_program = 'afplay'
		end
		self.files = Dir.entries(wav_directory).select do |filename|
			filename if filename.split(//).last(4).join == '.wav'
		end
	end
	def play_random_wav
		random_file = files.sample
		random_file_path = File.join wav_directory, random_file
		`#{wav_program} #{random_file_path}`
	end
end
