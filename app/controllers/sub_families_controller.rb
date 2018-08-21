class SubFamiliesController < ApplicationController
  before_action :set_sub_family, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @sub_families = SubFamily.all
    json_response(@sub_families)
  end

  # POST /todos
  def create
    @sub_family = SubFamily.create!(sub_family_params)
    json_response(@sub_family, :created)
  end

  # GET /todos/:id
  def show
    json_response(@sub_family)
  end

  # PUT /todos/:id
  def update
    @sub_family.update(sub_family_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @sub_family.destroy
    head :no_content
  end

  private

  def sub_family_params
    # whitelist params
    params.permit(:sub_family_id, :name)
  end

  def set_sub_family
    @sub_family = SubFamily.find(params[:id])
  end
end
