#
# Be sure to run `pod lib lint QNSwiftHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QNSwiftHelper'
  s.version          = '0.5.0'
  s.summary          = 'Quick Helper for iOS project'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Some quick helper with Frame, autolayout, uikit ..."

  s.homepage         = 'https://github.com/quocnb/QNSwiftHelper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'quocnb' => 'quocnb.vnu@gmail.com' }
  s.source           = { :git => 'https://github.com/quocnb/QNSwiftHelper.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'

  s.source_files = 'QNSwiftHelper/Classes/**/*'
  
  # s.resource_bundles = {
  #   'QNSwiftHelper' => ['QNSwiftHelper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
