Pod::Spec.new do |s|
  s.name             = "UCZProgressView"
  s.version          = "1.0.0"
  s.summary          = "UCZProgressView is a circular progress indicator for image loading."
  s.description      = <<-DESC
                       UCZProgressView is a circular progress indicator.
                       This progress view is inspired by [Michaël Villar's motion effect](http://www.michaelvillar.com/motion).
                       - Customizable indicator (line width, radius, and color)
                       - Display a label with the current progress.
                       - Customizable progress text label (color, size and font)
                       - Customizable background view (blur style)
                       DESC
  s.homepage         = "https://github.com/kishikawakatsumi/UCZProgressView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "kishikawa katsumi" => "kishikawakatsumi@mac.com" }
  s.source           = { :git => "https://github.com/kishikawakatsumi/UCZProgressView.git", :tag => "v#{s.version}" }
  s.social_media_url = 'https://twitter.com/k_katsumi'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Lib'
end
