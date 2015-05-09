Pod::Spec.new do |s|
  s.name     = 'JPSThumbnailAnnotation'
  s.version  = '1.0.0.10'
  s.platform = :ios
  s.license = 'MIT'
  s.author = { "JP"=>"JPS@gmail.com"}
  s.source = { :git => 'https://github.com/shiguol/JPSThumbnailAnnotation.git', :branch => 'feature_wg'}
  s.source_files = 'JPSThumbnailAnnotation/*.{h,m}'
  s.frameworks   = 'QuartzCore', 'MapKit', 'CoreLocation'
  s.requires_arc = true
end

