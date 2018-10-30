class ProductsController < ApiController
  # GET /products
  def index
    @products = Product.all
    render json: @products.to_json
  end

  # GET /products/:id
  def show
    @variant = Product.find(params[:id])
    render json: @variant.to_json(:include => { :variant => { :only => [:id, :description] }})
  end

  # POST /products
  def create
    params['variants'] = '[]' if params['variants'].blank?
    @variants_params = params['variants']

    options = {
      variants: @variants_params,
      quantity: params[:quantity],
    }

    render json: { success:  Product.new(options).save! }
  end

  # DELETE /products/:id
  def delete
    product = Product.find(params[:id])
    product.destroy
  end

  # PUT /products/:id
  def update
    product = Product.find(params[:id])
    render json: { success:  product.save(options) }
  end
end