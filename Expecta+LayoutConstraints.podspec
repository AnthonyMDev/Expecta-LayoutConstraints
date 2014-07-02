Pod::Spec.new do |s|
  s.platform     = :ios
  s.ios.deployment_target = '7.0'
  s.name         = "Expecta+LayoutConstraints"
  s.version      = "0.0.2"
  s.summary      = "Adds matchers for NSLayoutConstraints to Expecta"
  s.homepage     = "https://github.com/Oxy-AnthonyM/Expecta-LayoutConstraints"
  s.license      = { :type => "Closed Source", :file => "LICENSE.txt" }
  s.author       = { "Anthony Miller" => "anthony@app-order.com" }
  s.source   	 = { :git => "https://github.com/Oxy-AnthonyM/Expecta-LayoutConstraints.git",
                     :tag => "#{s.version}"}

  s.requires_arc = true

  s.dependency 'Expecta', '~> 0.3'

  s.source_files = "Expecta+LayoutConstraints/*.{h,m}"
end
