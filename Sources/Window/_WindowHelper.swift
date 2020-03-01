//
//  Example
//  man
//
//  Created by man on 11/11/2018.
//  Copyright © 2018 man. All rights reserved.
//

import UIKit

public class _WindowHelper: NSObject {
    public static let shared = _WindowHelper()

    let window: CocoaDebugWindow
    var displayedList = false
    lazy var vc = CocoaDebugViewController()

    
    private override init() {
        self.window = CocoaDebugWindow(frame: UIScreen.main.bounds)
        // This is for making the window not to effect the StatusBarStyle
        self.window.bounds.size.height = UIScreen.main.bounds.height.nextDown
        super.init()
    }

    
    public func enable() {
        if self.window.rootViewController != self.vc {
            self.window.rootViewController = self.vc
            self.window.delegate = self
            self.window.isHidden = false
            _WHDebugFPSMonitor.sharedInstance()?.startMonitoring()
            _WHDebugMemoryMonitor.sharedInstance()?.startMonitoring()
            _WHDebugCpuMonitor.sharedInstance()?.startMonitoring()
        }
        
        if #available(iOS 13.0, *) {
            var success: Bool = false
            
            for i in 0...10 {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + (0.1 * Double(i))) {[weak self] in
                    if success == true {return}
                    
                    for scene in UIApplication.shared.connectedScenes {
                        if let windowScene = scene as? UIWindowScene {
                            print((0.1 * Double(i)))
                            self?.window.windowScene = windowScene
                            success = true
                        }
                    }
                }
            }
        }
    }
    

    public func disable() {
        if self.window.rootViewController != nil {
            self.window.rootViewController = nil
            self.window.delegate = nil
            self.window.isHidden = true
            _WHDebugFPSMonitor.sharedInstance()?.stopMonitoring()
            _WHDebugMemoryMonitor.sharedInstance()?.stopMonitoring()
            _WHDebugCpuMonitor.sharedInstance()?.stopMonitoring()
        }
    }
}
