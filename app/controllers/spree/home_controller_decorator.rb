Spree::HomeController.class_eval do

  def get_domain
    @host = URI.parse(request.original_url).host
  end

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products.filter_store(@current_store.id)
    @taxonomies = Spree::Taxonomy.includes(root: :children).filter_store(@current_store.id)
  end

end
