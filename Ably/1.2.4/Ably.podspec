Pod::Spec.new do |s|
  s.name              = "Ably"
  s.version           = `Scripts/get-version.sh`
  s.summary           = "iOS, tvOS and macOS Objective-C and Swift client for Ably"
  s.description       = <<-DESC
                        iOS, tvOS and macOS Objective-C and Swift client library for ably.io, the realtime messaging service.
                        DESC
  s.homepage          = "https://www.ably.io"
  s.license           = { :type => 'Apache 2.0', :file => 'LICENSE', :submodules => true }
  s.author            = { "Ably" => "support@ably.io" }
  s.source            = { :git => "https://github.com/lawrence-forooghian/ably-cocoa.git", :tag => s.version.to_s, :submodules => true }
  s.social_media_url  = 'https://twitter.com/ablyrealtime'
  s.documentation_url = "https://www.ably.io/documentation"
  s.ios.deployment_target = '9.0'
  s.tvos.deployment_target = '10.0'
  s.osx.deployment_target = '10.11'
  s.requires_arc      = true
  s.swift_version     = '5.0'
  s.source_files      = 'Source/**/*.{h,m,swift}', 'SocketRocket/SocketRocket/**/*.{h,m}'
  s.private_header_files = 'Source/*+Private.h', 'Source/Private/*.h', 'SocketRocket/SocketRocket/ARTSRWebSocket.h'
  s.module_map        = 'Source/Ably.modulemap'
  s.dependency 'msgpack', '0.3.1'
  s.dependency 'ULID', '1.1.0'
  s.dependency 'AblyDeltaCodec', '1.2.0'
  s.prepare_command   = 'Scripts/prepare-pod.sh'
end
