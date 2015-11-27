require "comfortable_mexican_sofa"

module ProtectedplanetCms
  class Engine < ::Rails::Engine
    # make the host app run these migrations too
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
