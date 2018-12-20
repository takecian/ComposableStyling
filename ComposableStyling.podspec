#
# Be sure to run `pod lib lint ComposableStyling.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ComposableStyling'
  s.version          = '1.0.0'
  s.summary          = 'Functional styling in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Functional styling provides elegant composable styling implementation in Swift.
                       DESC

  s.homepage         = 'https://github.com/takecian/ComposableStyling'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'takecian' => 'takeshi.fujiki@linecorp.com' }
  s.source           = { :git => 'https://github.com/takecian/ComposableStyling.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ComposableStyling/**/*.swift'
  
  # s.resource_bundles = {
  #   'ComposableStyling' => ['ComposableStyling/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end