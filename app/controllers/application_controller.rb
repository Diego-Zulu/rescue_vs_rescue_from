# frozen_string_literal: true

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound do |_exception|
    head :not_found
  end

  def action
    raise ActiveRecord::RecordNotFound
  rescue ActiveRecord::RecordNotFound
    raise CustomError.new(no_cause: true), 'My message'
  end
end
