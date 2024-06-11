# frozen_string_literal: true

module Zoom
  class Error < StandardError
    attr_reader :error_hash
    attr_reader :code

    def initialize(msg, error_hash={}, code: nil)
      @error_hash = error_hash
      @code = code
      super(msg)
    end
  end

  class GatewayTimeout < StandardError; end
  class NotImplemented < StandardError; end
  class ParameterMissing < StandardError; end
  class ParameterNotPermitted < StandardError; end
  class ParameterValueNotPermitted < StandardError; end
  class AuthenticationError < StandardError; end
end
