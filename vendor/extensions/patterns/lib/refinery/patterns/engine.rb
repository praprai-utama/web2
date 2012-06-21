module Refinery
  module Patterns
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Patterns

      engine_name :refinery_patterns

      initializer "register refinerycms_patterns plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "patterns"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.patterns_admin_patterns_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/patterns/pattern',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Patterns)
      end
    end
  end
end
