
Pod::Spec.new do |spec|
  spec.name         = "TFY_BasicAnimationKit"

  spec.version      = "2.0.2"

  spec.summary      = "基本动画链式封装"

  spec.description  = <<-DESC
  基本动画链式封装
                   DESC

  spec.homepage     = "https://github.com/13662049573/TFY_BasicAnimationKit"
  
  spec.license      = "MIT"
  
  spec.author       = { "田风有" => "420144542@qq.com" }
  
  spec.platform     = :ios, "12.0"

  spec.source       = { :git => "https://github.com/13662049573/TFY_BasicAnimationKit.git", :tag => spec.version }

  spec.source_files  = "TFY_BasicAnimationKit/TFY_BasicAnimationKit/TFY_BasicAnimationKit.h"
  
  spec.subspec 'TFY_MacioAnimation' do |s|
    s.source_files  = "TFY_BasicAnimationKit/TFY_BasicAnimationKit/TFY_MacioAnimation/**/*.{h,m}"
  end

  spec.subspec 'TFY_CategoryAnimation' do |s|
    s.dependency "TFY_BasicAnimationKit/TFY_MacioAnimation"
    s.source_files  = "TFY_BasicAnimationKit/TFY_BasicAnimationKit/TFY_CategoryAnimation/**/*.{h,m}"
  end

  spec.requires_arc = true

end
