#
# Be sure to run `pod lib lint EasyRealm.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DataModelKit'
  s.version          = '1.1.0'
  s.summary          = 'DataModelKit is a simple and light framework for read and parse .xcdatamodel'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
DataModelKit is a simple and light framework for parse and read *.xcdatamodel files. It provides an API for navigate and explore DataModel
                       DESC

  s.homepage         = 'https://github.com/PoissonBallon/DataModelKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'Allan Vialatte' => 'allan.vialatte@icloud.com' }
  s.source           = { git: 'https://github.com/PoissonBallon/DataModelKit.git', tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/poissonballon'
  s.ios.deployment_target     = '10.0'
  s.osx.deployment_target     = '10.11'
  s.tvos.deployment_target    = '10.0'
  s.watchos.deployment_target = '3.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'Sources/**/*'
  s.dependency 'SWXMLHash', '4.2.5'
  s.dependency 'FileKit', '5.0.0'
end
