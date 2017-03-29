class BaseController < ApplicationController
    # before_action :authenticate_request
    # skip_before_action :verify_authenticity_token

    # attr_reader :current_user

    respond_to :json

    # private

    # def authenticate_request
    #     @current_user = AuthorizeApiRequest.call(request.headers).result
    #     render json: {error: 'Not Authorized', current_user: headers}, status: 401 unless @current_user
    # end
end

