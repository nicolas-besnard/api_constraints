module ApiConstraints
	mattr_accessor :api_name

	self.api_name = 'app'

	def self.setup(&block)
		yield self
	end
end