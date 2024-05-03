source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '15.0'
use_frameworks!

target 'NewsApp' do
    pod "FLUtilities", :git => 'https://github.com/Nickelfox/FLUtilities.git'
    pod "FLLogs", :git => 'https://github.com/Nickelfox/FLLogs.git'
    pod "AnyErrorKit", :git => 'https://github.com/Nickelfox/AnyErrorKit.git'
    pod 'Kingfisher'
    pod 'MBProgressHUD'
    pod 'SwiftLint'
    pod 'AppCenter'
end

target 'Model' do
    pod "FLUtilities", :git => 'https://github.com/Nickelfox/FLUtilities.git'
    pod "FLLogs", :git => 'https://github.com/Nickelfox/FLLogs.git'
    pod 'FoxAPIKit', :git => 'https://github.com/Nickelfox/FoxAPIKit.git'
end

post_install do |installer|
    installer.generated_projects.each do |project|
        project.targets.each do |target|
            target.build_configurations.each do |config|
                config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
            end
        end
    end
end
