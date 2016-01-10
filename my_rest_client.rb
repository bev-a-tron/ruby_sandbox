require 'json'
require 'rest_client'

class MyRestClient

  def get_code
      auth = {
          application: config.application_id,
          auth: config.auth_key
      }

      options = {
          name: 'Free apple tarts',
          description: 'Click here for free apple tarts!'
      }

      body = { request: auth.merge( options ) }
      puts body.class

      access_token = 'Bearer ' + config.access_token
      rv = RestClient::Request.execute(:url => 'https://cp.pushwoosh.com/json/1.3/createCampaign',
                             :method => :post,
                             :verify_ssl => false,
                             :body => body.to_json,
                             :content_type => :json,
                             :authorization => access_token)

      rv = RestClient.post 'https://cp.pushwoosh.com/json/1.3/createCampaign',
                           body.to_json, {:params => {
                           :content_type => :json,
                           :authorization => access_token }}

  end

end

rc = MyRestClient.new
rv = rc.get_code
puts rv