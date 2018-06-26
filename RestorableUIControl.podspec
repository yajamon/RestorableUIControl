#
# Be sure to run `pod lib lint RestorableUIControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RestorableUIControl'
  s.version          = '0.1.0'
  s.summary          = 'Restorable UIControl Classes.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Restorable UIControl Classes.
It restore from UserDefaults.
Can edit key of UserDefaults in Interface-Builder.
DESC

  s.homepage         = 'https://github.com/yajamon/RestorableUIControl'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yajamon' => 'yajamon.tatsuki@gmail.com' }
  s.source           = { :git => 'https://github.com/yajamon/RestorableUIControl.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/yajamon'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'RestorableUIControl/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RestorableUIControl' => ['RestorableUIControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
