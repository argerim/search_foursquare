class DashboardController < ApplicationController
  respond_to :html

  def index
    @venues = Foursquare::search_venues(params[:latitude] + "," + params[:longitude],  params[:text]) if params[:commit].present? && params[:latitude].present? && params[:longitude].present? && params[:text].present?
    respond_with @venues
  end
end
