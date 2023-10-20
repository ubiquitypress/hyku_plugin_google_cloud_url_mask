require_relative "../../app/controllers/hyku_plugin_google_cloud_url_mask/files_controller_behavior.rb"
require_relative "../../app/services/file_signed_url_service.rb"

module HykuPluginGoogleCloudUrlMask
  class Engine < ::Rails::Engine
    
    def self.mixins
      ::Hyku::API::V1::FilesController.include HykuPluginGoogleCloudUrlMask::FilesControllerBehavior
    end
    
    config.send(:to_prepare) { HykuPluginGoogleCloudUrlMask::Engine.mixins }
  end
end