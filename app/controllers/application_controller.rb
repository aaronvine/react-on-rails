before_action :ensure_json_request

def ensure_json_request
  return if request.format == :json
  render :nothing => true, :status => 406
end

class ApplicationController < ActionController::API
  respond_to :json
end
