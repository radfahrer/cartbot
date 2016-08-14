require 'io/console'
# Reads keypresses from the user including 2 and 3 escape character sequences.
# as per https://gist.github.com/acook/4190379
class KeyboardSpy
	def listen
		yield read_key while block_given?
	end

		private

	def read_key
		STDIN.echo = false
		STDIN.raw!

		input = STDIN.getc.chr
		if input == "\e" then
			input << STDIN.read_nonblock(3) rescue nil
			input << STDIN.read_nonblock(2) rescue nil
		end

		exit 0 if input == "\u0003"

		return input
	ensure
		STDIN.echo = true
		STDIN.cooked!
	end
end
