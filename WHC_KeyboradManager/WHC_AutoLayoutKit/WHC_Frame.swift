//
//  WHC_ViewExtension.swift
//  WHC_Layout
//  Created by duxiu on 2018/7/25.
//  Copyright © 2018年 henanduxiu. All rights reserved.
//


#if os(iOS) || os(tvOS)
    import UIKit
#else
    import AppKit
#endif

public extension WHC_VIEW {
    #if os(iOS) || os(tvOS)
    public var whc_sw: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    public var whc_sh: CGFloat {
        return UIScreen.main.bounds.height
    }
    #else
    public var whc_sw: CGFloat {
        return NSScreen.main == nil ? 0 : NSScreen.main!.frame.width
    }
    
    public var whc_sh: CGFloat {
        return NSScreen.main == nil ? 0 : NSScreen.main!.frame.height
    }
    #endif
    
    public var whc_w: CGFloat {
        set {
            var rect = self.frame
            rect.size.width = newValue
            self.frame = rect
        }
        
        get {
            return self.frame.width
        }
    }
    
    public var whc_h: CGFloat {
        set {
            var rect = self.frame
            rect.size.height = newValue
            self.frame = rect
        }
        
        get {
            return self.frame.height
        }
    }
    
    public var whc_x: CGFloat {
        set {
            var rect = self.frame
            rect.origin.x = newValue
            self.frame = rect
        }
        
        get {
            return self.frame.minX
        }
    }
    
    public var whc_y: CGFloat {
        set {
            var rect = self.frame
            rect.origin.y = newValue
            self.frame = rect
        }
        
        get {
            return self.frame.minY
        }
    }
    
    public var whc_maxX: CGFloat {
        set {
            self.whc_w = newValue - self.whc_x
        }
        
        get {
            return self.frame.maxX
        }
    }
    
    public var whc_maxY: CGFloat {
        set {
            self.whc_h = newValue - self.whc_y
        }
        
        get {
            return self.frame.maxY
        }
    }
    
    public var whc_midX: CGFloat {
        set {
            self.whc_w = newValue * 2
        }
        
        get {
            return self.frame.minX + self.frame.width / 2
        }
    }
    
    public var whc_midY: CGFloat {
        set {
            self.whc_h = newValue * 2
        }
        
        get {
            return self.frame.minY + self.frame.height / 2
        }
    }
    
    #if os(iOS) || os(tvOS)
    public var whc_cx: CGFloat {
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
        
        get {
            return self.center.x
        }
    }
    
    public var whc_cy: CGFloat {
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
        
        get {
            return self.center.y
        }
    }
    #endif
    
    public var whc_xy: CGPoint {
        set {
            var rect = self.frame
            rect.origin = newValue
            self.frame = rect
        }
        
        get {
            return self.frame.origin
        }
    }
    
    public var whc_s: CGSize {
        set {
            var rect = self.frame
            rect.size = newValue
            self.frame = rect
        }
        
        get {
            return self.frame.size
        }
    }
}

