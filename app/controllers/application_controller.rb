class ApplicationController < ActionController::API
  include Response

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::RecordNotSaved do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::RecordNotDestroyed do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::ActiveRecordError do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::UnknownPrimaryKey do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::RecordNotUnique do |exception|
    json_response({ message: exception.message }, :not_found)
  end
end
