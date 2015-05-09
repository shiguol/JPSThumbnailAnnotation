Pod::Spec.new do |s|
  s.name = 'JPSThumbnailAnnotation'
  s.version  = '1.0.0.11'
  s.platform = :ios, '7.0'
  s.authors = { "JPS" => "JPS@gmail.com"}
  s.homepage = "https://github.com/shiguol/JPSThumbnailAnnotation"
  s.license = 'MIT'
  s.summary = "Pin"
  s.source = { :git => 'https://github.com/shiguol/JPSThumbnailAnnotation.git', :branch => 'feature_wg'}
  s.source_files = 'JPSThumbnailAnnotation/*.{h,m}'
  s.frameworks   = 'QuartzCore', 'MapKit', 'CoreLocation'
  s.requires_arc = true
end

