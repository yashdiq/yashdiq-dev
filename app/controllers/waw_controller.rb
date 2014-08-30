class WawController < ApplicationController
	layout "waw"
	def index
		@hai = "a warm welcome!"
		@echo = "This is the personal website of who addicted to code, write, love, and coffee.
		Become a Musician is one of his wanna-be."
		@by = "He is Yashdiq Lubis"
	end
end
