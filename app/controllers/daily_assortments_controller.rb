class DailyAssortmentsController < ApplicationController
  before_action :set_daily_assortment, only: [:show, :update, :destroy]

  # GET /DailyAssortments
  def index
    @daily_assortments = DailyAssortment.all
    json_response(@daily_assortments)
  end

  # POST /DailyAssortments
  def create
    @daily_assortment = DailyAssortment.create!(daily_assortment_params)
    json_response(@daily_assortment, :created)
  end

  # GET /DailyAssortments/:id
  def show
    json_response(@daily_assortment)
  end

  # PUT /DailyAssortments/:id
  def update
    @daily_assortment.update(daily_assortment_params)
    head :no_content
  end

  # DELETE /DailyAssortments/:id
  def destroy
    @daily_assortment.destroy
    head :no_content
  end 

  private
    
  def daily_assortment_params
    params.permit(:assortment_start_date, :article_id, :store_id,
                  :in_cluster_only_because_of_promotion,
                  :in_elimination, :provisioning_start_date,
                  :replenishment_start_date, :is_replenishable,
                  :article_name, :sub_family_id, :substitute_article_id,
                  :sub_category_id, :is_article_without_price,
                  :is_orderable_and_loadable)

  end

  def set_daily_assortment
    @daily_assortment = DailyAssortment.find(params[:id])
  end

end
