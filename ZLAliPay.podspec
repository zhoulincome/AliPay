Pod::Spec.new do |s|
  s.name         = "ZLAliPay"
  s.version      = "1.0.1"
  s.summary      = "2016.3.20最新sdk"
  s.homepage     = "https://github.com/zhoulincome/AliPay"
  s.license      = "MIT"
  s.author       = { "zhoulin" => "359344816@q.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/zhoulincome/AliPay.git", :tag => s.version.to_s }

  s.vendored_libraries = 'AliEx/*.a'
  s.resources  = 'AlipaySDK.bundle'
  s.source_files  = 'AliEx/*.{h,m}','Util/*.{h,m}'
  s.frameworks = 'SystemConfiguration','CoreTelephony','QuartzCore','CoreText','CoreGraphics','UIKit','Foundation','CFNetwork','CoreMotion'
  s.libraries = 'z','c++'
  s.vendored_frameworks = 'AlipaySDK.framework'
  s.requires_arc = true

end

