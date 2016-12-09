class HomeController < ApplicationController
  def index
    @visitor_count = Visitor.count
    @view_count = View.count
  end
end
