class SocialSquareController < ApplicationController
  skip_before_filter :verify_authenticity_token
  skip_before_filter :add_current_store_id_to_params

  def my_store
    sign_in(Spree::User.find(params[:spree_user][:id]), :bypass => true)
    redirect_to '/admin/orders'
  end

  def create_user
    user = Spree::User.new email: params[:spree_user][:email], login: params[:spree_user][:email], 
      password: params[:spree_user][:password]
    user.spree_roles << Spree::Role.find_by_name(:admin)
    local_name = params[:spree_user][:email].split('@').first
    store_url  = local_name + '.socialsquare:3001' 
    user.store = Spree::Store.create name: local_name + ' store', url: store_url,
      mail_from_address: params[:spree_user][:email], code: Random.rand(100000)
    user.save
    render json: {spree_user_id: user.id, spree_user_store: store_url}
  end

end

# HTTParty.post("http://spree1.dev:3001/user/create/social_square",
#   { 
#     :body => { "spree_user" => {"email" => "mmansilla@toptierlabs.com", "password" => "123456"} }.to_json,
#     :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'}
#   })
