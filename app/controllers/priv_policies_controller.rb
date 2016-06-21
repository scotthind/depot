class PrivPoliciesController < ApplicationController
  before_action :set_priv_policy, only: [:show, :edit, :update, :destroy]

  # GET /priv_policies
  # GET /priv_policies.json
  def index
    @priv_policies = PrivPolicy.all
  end

  # GET /priv_policies/1
  # GET /priv_policies/1.json
  def show
  end

  # GET /priv_policies/new
  def new
    @priv_policy = PrivPolicy.new
  end

  # GET /priv_policies/1/edit
  def edit
  end

  # POST /priv_policies
  # POST /priv_policies.json
  def create
    @priv_policy = PrivPolicy.new(priv_policy_params)

    respond_to do |format|
      if @priv_policy.save
        format.html { redirect_to @priv_policy, notice: 'Priv policy was successfully created.' }
        format.json { render :show, status: :created, location: @priv_policy }
      else
        format.html { render :new }
        format.json { render json: @priv_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /priv_policies/1
  # PATCH/PUT /priv_policies/1.json
  def update
    respond_to do |format|
      if @priv_policy.update(priv_policy_params)
        format.html { redirect_to @priv_policy, notice: 'Priv policy was successfully updated.' }
        format.json { render :show, status: :ok, location: @priv_policy }
      else
        format.html { render :edit }
        format.json { render json: @priv_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /priv_policies/1
  # DELETE /priv_policies/1.json
  def destroy
    @priv_policy.destroy
    respond_to do |format|
      format.html { redirect_to priv_policies_url, notice: 'Priv policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priv_policy
      @priv_policy = PrivPolicy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def priv_policy_params
      params.require(:priv_policy).permit(:store_name, :policy)
    end
end
