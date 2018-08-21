class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :update, :destroy]
  
  # GET /todos
  def index
    @sub_categories = SubCategory.all
    json_response(@sub_categories)
  end

  # POST /todos
  def create
    @sub_category = SubCategory.create!(sub_category_params)
    json_response(@sub_category, :created)
  end

  # GET /todos/:id
  def show
    json_response(@sub_category)
  end

  # PUT /todos/:id
  def update
    @sub_category.update(sub_category_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @sub_category.destroy
    head :no_content
  end

  private

  def sub_category_params
    # whitelist params
    params.permit(:sub_category_id, :name)
  end

  def set_sub_category
    @sub_category = SubCategory.find(params[:id])
  end

  def set_cors_headers
    response.set_header "Access-Control-Allow-Origin", origin
  end

  def origin
    request.headers["Origin"] || "*"
  end
end
