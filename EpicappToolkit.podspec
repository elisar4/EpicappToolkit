Pod::Spec.new do |s|
  s.name             = 'EpicappToolkit'
  s.version          = '0.1.1'
  s.summary          = 'Useful Tools'

  s.description      = <<-DESC
EpicappToolkit is a collection of useful classes for every iOS project
                       DESC

  s.homepage         = 'https://github.com/elisar4/EpicappToolkit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vladimir' => 'bobah1991@gmail.com' }
  s.source           = { :git => 'https://github.com/elisar4/EpicappToolkit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'EpicappToolkit/*.swift'

end
