module HykuPluginGoogleCloudUrlMask
  class Engine < ::Rails::Engine
    isolate_namespace HykuPluginGoogleCloudUrlMask

    def self.mixins
      ::Hyku::API::V1::FilesController.include HykuPluginGoogleCloudUrlMask::FilesControllerBehavior
    end
    
    method = Rails.env.development? ? :to_prepare : :after_initialize
    config.send(method) { HykuPluginGoogleCloudUrlMask::Engine.mixins }
  end
end
