#
# Be sure to run `pod lib lint MytestDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LCJNSKit'
  s.version          = '0.1.0'
  s.summary          = 'LCJNSKit 保存本的成功的cocopods项目'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: LCJNSKit 保存本的成功的cocopods项目 LCJNSKit 保存本的成功的cocopods项目
                       DESC

  s.homepage         = 'https://github.com/wangshuangliang/LCJNSKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1397871472@qq.com' => '1607667322@qq.com' }
  s.source           = { :git => 'https://github.com/wangshuangliang/LCJNSKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MytestDemo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MytestDemo' => ['MytestDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.ios.vendored_frameworks = "Framework/WSLSFramework.framework"
  s.dependency 'Masonry'
end
