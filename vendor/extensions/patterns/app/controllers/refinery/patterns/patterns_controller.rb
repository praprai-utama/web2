module Refinery
  module Patterns
    class PatternsController < ::ApplicationController

      before_filter :find_all_patterns
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @pattern in the line below:
        present(@page)
      end

      def show
        @pattern = Pattern.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @pattern in the line below:
        present(@page)
      end

    protected

      def find_all_patterns
        @patterns = Pattern.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/patterns").first
      end

    end
  end
end
