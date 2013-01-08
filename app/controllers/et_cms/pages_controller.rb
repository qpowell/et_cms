module EtCms
  class PagesController < ApplicationController

    def home
      @page = Page.find("home")
      render "show"
    end


    def show
      @page = Page.find(params[:id].downcase)
    end

  end
end
