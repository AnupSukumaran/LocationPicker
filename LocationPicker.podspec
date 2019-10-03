
Pod::Spec.new do |spec|


  spec.name         = "LocationPicker"
  spec.version      = "0.0.6"
  spec.summary      = "LocationPicker is used to pick address from Google maps directly."

  #spec.description  = <<-DESC
  #DESC
  
  spec.homepage     = "https://github.com/AnupSukumaran/LocationPicker.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Anup Sukumaran" => "anup.sukumaran9@gmail.com" }
                   
  spec.platform     = :ios
  spec.ios.deployment_target = "13.0"


  spec.source       = { :git => "https://github.com/AnupSukumaran/LocationPicker.git", :tag => "0.0.3" }


  spec.source_files  = "LocationPicker", "LocationPicker/**/*.{swift}"

  spec.resources = "LocationPicker/**/*.{png,storyboard,xcassets}"

  spec.framework  = "UIKit"
  spec.requires_arc = true
  
  spec.dependency "Alamofire", "~> 4.9.0"
  spec.dependency "SDWebImage", "~> 5.1.0"
  spec.dependency "NVActivityIndicatorView/AppExtension", "~> 4.8.0"
  spec.dependency "GooglePlaces", "~> 3.4.0"
  spec.dependency "GoogleMaps", "~> 3.4.0"
  spec.static_framework = true
  spec.swift_version = '5.0'

end
