module Imagine
  module GallerifficView
    class Engine < ::Rails::Engine
      isolate_namespace ::Imagine
      engine_name 'imagine_galleriffic_view'

      config.after_initialize do |app|
        ::Imagine::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = 'imagine_galleriffic_view'
          plugin.directory = 'galleriffic_view'
          plugin.version = %q{0.0.1}
        end
      end

    end
  end
end

::Imagine.engines << 'galleriffic_view'
