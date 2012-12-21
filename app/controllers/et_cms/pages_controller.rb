module EtCms
  class PagesController < ApplicationController

    def home
      @page = Page.find("Home")
    end


    def show
      @page = Page.find(params[:id])
    end

  end
end
