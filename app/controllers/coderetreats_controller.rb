Coderetreat = Struct.new :status, :location

class CoderetreatsController < ApplicationController
	def running_today
		@coderetreats = Object.new
		def @coderetreats.not_started(&block)
			[
				Coderetreat.new("not_started", "London"),
				Coderetreat.new("not_started", "Manchester")
			].each(&block)
		end
		def @coderetreats.in_session(&block)
			[
				Coderetreat.new("in_session", "Berlin")
			].each(&block)
		end
	end
end
