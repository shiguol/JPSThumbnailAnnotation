Pod::Spec.new do |s|
  s.name     = 'JPSThumbnailAnnotation'
  s.version  = '1.0.0.4'
  s.platform = :ios
  s.source   = { :git => 'https://github.com/shiguol/JPSThumbnailAnnotation.git', :branch => 'feature_wg'}
  s.source_files = 'JPSThumbnailAnnotation/*.{h,m}'
  s.frameworks   = 'QuartzCore', 'MapKit', 'CoreLocation'
  s.requires_arc = true
end
