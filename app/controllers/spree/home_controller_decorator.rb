Spree::HomeController.class_eval do
  before_action :get_store, :get_user, only: [:index]

  def get_domain
    @host = URI.parse(request.original_url).host
  end

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products.where('store_id = ?', @store.id)
    @taxonomies = Spree::Taxonomy.includes(root: :children).where(user_id: @user_store.id)
  end

  private
    def get_store
      # store = Spree::Store.where(url: @host).first
      @store = Spree::Store.find(params[:current_store_id])
    end

    def get_user
      @user_store = Spree::Store.find(params[:current_store_id]).user
    end

end
