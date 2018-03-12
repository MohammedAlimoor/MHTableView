#
# Be sure to run `pod lib lint MHTableView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MHTableView'
  s.version          = '0.1.1'
  s.summary          = 'A short description of MHTableView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MohammedAlimoor/MHTableView'
  s.screenshots     = 'https://i.gyazo.com/d78e71f948fb20e8ab9c6c774ac33fab.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MohammedAlimoor' => 'ameral.java@gmail.com' }
  s.source           = { :git => 'https://github.com/MohammedAlimoor/MHTableView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alimoormohammed'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MHTableView/Classes/**/*'
  
   s.resource_bundles = {
     'MHTableView' => ['MHTableView/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
