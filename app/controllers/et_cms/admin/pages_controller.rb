module EtCms
  module Admin
    class PagesController < EtCms::AdminController

      def index
        @pages = Page.all
      end

      def new
        @pages = Page.all
        @page = Page.new
      end

      def edit
        @pages = Page.all
        @page = Page.find(params[:id])
      end

      def create
        @page = Page.new(params[:page])

        if @page.save
          redirect_to(admin_pages_url, :notice => 'Page was successfully created.')
        else
          @pages = Page.all
          render :action => "new"
        end
      end

      def update
        @page = Page.find(params[:id])

        respond_to do |format|
          if @page.update_attributes(params[:page])
            format.html { redirect_to(admin_pages_url, :notice => 'Page was successfully updated.') }
            format.json { head :ok }
          else
            @pages = Page.all
            format.html { render :action => "edit" }
            format.json { head :bad_request }
          end
        end
      end

      def destroy
        Page.destroy(params[:id])
        redirect_to(admin_pages_url)
      end
    end
  end
end
