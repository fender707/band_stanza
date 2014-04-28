class NewsController < ApplicationController
  def index
    @infos = Info.order(:title)
  end
end
