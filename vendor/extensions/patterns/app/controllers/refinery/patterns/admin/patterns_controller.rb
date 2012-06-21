module Refinery
  module Patterns
    module Admin
      class PatternsController < ::Refinery::AdminController

        crudify :'refinery/patterns/pattern',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
