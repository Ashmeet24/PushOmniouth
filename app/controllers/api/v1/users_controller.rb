class Api::V1::UsersController < ApplicationController
  respond_to :json


  def register
  	data = {}
  	if params[:user].blank?
  	render json: get_v1_formatted_response({}, false, ['Invalid params']).to_json and return
    end

  end









private

  def user_params
    {
      user_name: params[:user][:name],
      email: params[:user][:email]
      #facebook_id: params[:user][:facebook_id]
    }
end

def device_params
	{
user_device_id: params[:device_info][:device_id],
      google_api_key: params[:device_info][:gcm_key],
      android_id: params[:device_info][:osversion],
      serial_number: params[:device_info][:imei],
appversion: params[:device_info][:appversion]
}

end

end
