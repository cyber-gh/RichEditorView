Pod::Spec.new do |s|
  s.name         = "RichEditorViewSwift"
  s.version      = "0.0.4"
  s.summary      = "Rich editor view"
  s.homepage     = "https://github.com/cyber-gh/RichEditorView"
  s.source       = { :git => "https://github.com/cyber-gh/RichEditorView.git", :tag => s.version }
  s.license      = 'BSD'
  s.author       = { "cyber-gh" => "soltangh.work@gmail.com" }
  s.source_files  = "Sources/RichEditorView/*.swift"
  s.ios.deployment_target  = '9.0'
  s.swift_version = '5.0'
end
