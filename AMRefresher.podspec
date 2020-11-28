#
# Be sure to run `pod lib lint AMRefresher.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMRefresher-Fork'
  s.platform = :ios
  s.version          = ENV['LIB_VERSION'] || '1.1' #fallback to major version
  s.summary          = 'Super easy way to use "Pull To Refresh" and "Infinite Scrolling" with 1 line of code'

  s.description      = <<-DESC
Super easy way to use "Pull To Refresh" and "Infinite Scrolling" with 1 line of code from arturdev
                       DESC

  s.homepage         = 'https://github.com/kumpeapps/AMRefresher-Fork'
  s.screenshots      = 'https://raw.githubusercontent.com/arturdev/AMRefresher/master/demo.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { "Justin Kumpe" => "helpdesk@kumpeapps.com" }
  s.source = { :git => 'https://github.com/kumpeapps/AMRefresher-Fork.git', :tag => "#{s.version}" }
  
  s.ios.deployment_target = '14.0'
  s.source_files = 'AMRefresher/*'
  s.swift_version = '5'
  s.frameworks = 'UIKit'
end
