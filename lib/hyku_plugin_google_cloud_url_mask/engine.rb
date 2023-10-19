require_relative "../app/controllers/hyku_plugin_google_cloud_url_mask/application_controller.rb"
require_relative "../app/controllers/hyku_plugin_google_cloud_url_mask/app/files_controller_behavior.rb"
require_relative "../app/services/file_signed_url_service.rb"

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