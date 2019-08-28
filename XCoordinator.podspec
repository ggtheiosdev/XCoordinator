Pod::Spec.new do |spec|
    spec.name         = 'XCoordinator'
    spec.version      = '2.0.0'
    spec.license      = { :type => 'MIT' }
    spec.homepage     = 'https://github.com/quickbirdstudios/XCoordinator'
    spec.authors      = { 'Stefan Kofler' => 'stefan.kofler@quickbirdstudios.com', 'Paul Kraft' => 'pauljohannes.kraft@quickbirdstudios.com' }
    spec.summary      = 'Navigation framework based on coordinator pattern.'
    spec.source       = { :git => 'https://github.com/quickbirdstudios/XCoordinator.git', :tag => spec.version }
    spec.module_name = 'XCoordinator'
    spec.swift_version = '5.1'
    spec.ios.deployment_target = '8.0'
    spec.source_files = 'Sources/XCoordinator/*.swift'
    spec.default_subspec = 'Core'

    spec.subspec 'Core' do |ss|
        ss.source_files = 'Sources/XCoordinator/*.swift'
        ss.framework  = 'Foundation'
        ss.framework  = 'UIKit'
    end

    spec.subspec 'RxSwift' do |ss|
        ss.dependency 'XCoordinator/Core'
        ss.dependency 'RxSwift', '~> 5.0'

        ss.source_files = 'Sources/XCoordinator+Rx/*.swift'
    end

    spec.subspec 'Combine' do |ss|
        ss.dependency 'XCoordinator/Core'
        ss.dependency 'RxSwift', '~> 4.0'

        ss.source_files = 'Sources/XCoordinator+Combine/*.swift'
    end
end
