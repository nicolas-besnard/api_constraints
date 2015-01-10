module ActionDispatch::Routing
  class Mapper
    def api_constraints(version, options = {})
      options[:default] ||= false

      version_sym = "v#{version}".to_sym
      scope module: version_sym, constraints: ApiConstraints::Constraint.new(version: version, default: options[:default]) do
        yield
      end
    end
  end
end
