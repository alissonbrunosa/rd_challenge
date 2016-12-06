class VisitorsController < ApplicationController
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    @visitors = Visitor.all
  end

  def show
  end

  def create
    request = Request.new(visitor_params)
    if request.save
      render json: {}, status: :ok
    else
      render json: {}, status: :unprocessable_entity
    end
  end

  private
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    def visitor_params
      params.permit(:email, views: [:url, :visited_at])
    end
end
