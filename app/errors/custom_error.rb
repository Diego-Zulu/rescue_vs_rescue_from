# frozen_string_literal: true

class CustomError < StandardError
  attr_reader :no_cause
  def initialize(msg = 'Custom Error Message', no_cause: false)
    @no_cause = no_cause
    super(msg)
  end

  def cause
    return nil if no_cause

    super
  end
end
