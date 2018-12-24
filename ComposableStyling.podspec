#
# Be sure to run `pod lib lint ComposableStyling.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ComposableStyling'
  s.version          = '1.1.1'
  s.summary          = 'Functional styling in Swift.'
  s.description      = <<-DESC
Functional styling provides elegant composable styling implementation in Swift.
                       DESC

  s.homepage         = 'https://github.com/takecian/ComposableStyling'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'takecian' => 'takecian@gmail.com' }
  s.source           = { :git => 'https://github.com/takecian/ComposableStyling.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version    = '4.2'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ComposableStyling/*.swift'
end
