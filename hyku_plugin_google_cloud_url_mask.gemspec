require_relative "lib/hyku_plugin_google_cloud_url_mask/version"

Gem::Specification.new do |spec|
  spec.name        = "hyku_plugin_google_cloud_url_mask"
  spec.version     = HykuPluginGoogleCloudUrlMask::VERSION
  spec.authors     = ["Martin Simpson"]
  spec.email       = ["martin.simpson@ubiquitypress.com"]
  spec.homepage    = "https://github.com/ubiquitypress/hyku_plugin_google_cloud_url_mask"
  spec.summary     = "Hyku Plugin - Google Cloud URL Masking"
  spec.description = "Allows Hyku to utilise Google Cloud Storage for download file URL masking"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.7"

  spec.add_dependency "google-cloud-storage", "~> 1.31"
  spec.add_dependency "google-cloud-pubsub", "~> 2.6.1"
end
