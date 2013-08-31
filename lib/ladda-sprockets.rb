module Ladda
    module Sprockets
        def self.load!

            if rails?
                require "ladda-sprockets/engine"
            end

            stylesheets = File.expand_path(File.join("..", "vendor", "assets", "stylesheets"), File.dirname(__FILE__))
            ::Sass.load_paths << stylesheets

        end

        private

        def self.rails?
            defined?(::Rails)
        end
    end
end

Ladda::Sprockets.load!
