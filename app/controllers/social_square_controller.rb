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
    store_url  = local_name + '.webappbetaone.socialsquare.ae' 
    user.store = Spree::Store.create name: local_name + ' store', url: store_url,
      mail_from_address: params[:spree_user][:email], code: Random.rand(100000)
    user.save
    # create default shipping category that is created always but now for each store
    Spree::ShippingCategory.create name: "Default", store_id: user.store.id
    render json: {spree_user_id: user.id, spree_user_store: store_url}
  end

  def check_health
    head :ok
  end

end
