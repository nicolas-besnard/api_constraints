module ApiConstraints
	class Constraint
		def initialize(options)
			@version = options.fetch(:version, 1)
			@default = options.fetch(:default, 'app')
		end

		def matches?(req)
			@default || req.headers['Accept'].include?("application/vnd.#{ApiConstraints.api_name}.v#{@version}")
		end
	end
end
