# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'chatapp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

# Pods for chatapp
pod 'Firebase'
pod 'FirebaseAuth'
pod 'FirebaseDatabase'
pod 'FirebaseStorage'
pod 'FirebaseAnalytics'
pod 'FirebaseStorage'
pod 'GooglePlaces', '4.2.0'
pod 'Firebase/Firestore'
pod 'MessageKit'
pod 'Pageboy'
post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings["ONLY_ACTIVE_ARCH"] = "NO"
      end
    end
  end
end
