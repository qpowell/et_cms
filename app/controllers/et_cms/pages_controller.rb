require_dependency "et_cms/application_controller"

module EtCms
  class PagesController < ApplicationController
    def index
        @pages = Page.all
      end

      def show
        @page = Page.find(params[:id])
      end

      def new
        @page = Page.new
      end

      def edit
        @page = Page.find(params[:id])
      end

      def create
        @page = Page.new(params[:page])

        if @page.save
          redirect_to(pages_url, :notice => 'Page was successfully created.')
        else
          render :action => "new"
        end
      end

      def update
        @page = Page.find(params[:id])

        respond_to do |format|
          if @page.update_attributes(params[:page])
            format.html {redirect_to(pages_url, :notice => 'Page was successfully updated.')}
            format.json {head :ok}
          else
            format.html {render :action => "edit"}
            format.json {head :bad_request}
          end
        end
      end

      def destroy
        Page.destroy(params[:id])
        redirect_to(pages_url)
      end
  end
end
