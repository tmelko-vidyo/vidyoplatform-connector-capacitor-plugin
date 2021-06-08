require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'VidyoplatformConnectorPlugin'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target  = '12.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.1'

  s.vendored_frameworks = 'ios/Pods/VidyoClient/**'
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreLocation', 'CoreMedia', 'SystemConfiguration', 'UIKit'

  # Header search path setup
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => 'ios/Pods/VidyoClient' }

  s.xcconfig = {'ENABLE_BITCODE' => 'NO'}
end
