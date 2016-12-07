class VisitorsController < ApplicationController
  before_action :set_visitor, only: [:show]
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @visitors = Visitor.all
  end

  def show
  end

  def create
    @req = Request.new(visitor_params)
    if @req.save
      render :show, status: :created
    else
      render json: { message: "Could not register visitor." }, status: :unprocessable_entity
    end
  end

  private
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    def visitor_params
      params.permit(:email, views: [:id, :url, :visited_at])
    end
end
