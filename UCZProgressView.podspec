Pod::Spec.new do |s|
  s.name             = "UCZProgressView"
  s.version          = "1.0.0"
  s.summary          = "UCZProgressView is a circular progress indicator with cool animations for image loading."
  s.description      = <<-DESC
                       UCZProgressView is a circular progress indicator with cool animations for image loading.

                       This progress view is inspired by [Michaël Villar's motion effect 08-Photo Loading](http://www.michaelvillar.com/motion).

                       - Customizable indicator (line width, radius, and color)
                       - Display a label with the current progress.
                       - Customizable progress text label (color, size and font)
                       - Customizable background view (blur style)
                       - Fully support interface builder (`IB_DESIGNABLE` and `IBInspectable`)
                       - Fully support `UI_APPEARANCE_SELECTOR`
                       DESC
  s.homepage         = "https://github.com/kishikawakatsumi/UCZProgressView"
  s.screenshots      = "https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie1.gif", "https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie2.gif", "https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie3.gif", "https://raw.githubusercontent.com/kishikawakatsumi/UCZProgressView/master/Screenshots/movie4.gif"
  s.license          = 'MIT'
  s.author           = { "kishikawa katsumi" => "kishikawakatsumi@mac.com" }
  s.source           = { :git => "https://github.com/kishikawakatsumi/UCZProgressView.git", :tag => "v#{s.version}" }
  s.social_media_url = 'https://twitter.com/k_katsumi'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Lib'
end
