class UrlsController < ApplicationController
  # GET /urls or /urls.json
  def index
    @urls = Url.all
  end

  # GET /urls/new
  def new
    @url = Url.new
  end

  # POST /urls or /urls.json
  def create
    @url = Url.new(url_params)
    @url.short_url = @url.generate_short_url

    respond_to do |format|
      if @url.save
        format.html { redirect_to urls_url(@url), notice: "Url was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def url_params
      params.require(:url).permit(:long_url)
    end
end
