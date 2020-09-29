import SwiftUI
#if os(iOS) || os(tvOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

extension Color {
    // MARK: - iOS, tvOS, macOS
    
    #if os(iOS) || os(tvOS) || os(macOS)
    public static var separator: Color {
        #if os(iOS) || os(tvOS)
        return Color(UIColor.separator)
        #elseif os(macOS)
        return Color(NSColor.separatorColor)
        #endif
    }
    #endif
    
    // MARK: - iOS and macOS
    
    #if os(iOS) || os(macOS)
    /// The color for the main background of your interface.
    public static var systemBackground: Color {
        #if os(iOS)
        return Color(UIColor.systemBackground)
        #elseif os(macOS)
        return Color(NSColor.windowBackgroundColor)
        #endif
    }
    #endif
    
    // MARK: - iOS-only
    
    #if os(iOS)
    /// The color for content layered on top of the main background.
    public static var secondarySystemBackground: Color {
        return Color(UIColor.secondarySystemBackground)
    }
    
    /// The color for the main background of your interface.
    public static var tertiarySystemBackground: Color {
        return Color(UIColor.tertiarySystemBackground)
    }
    
    /// The color for the main background of your grouped interface.
    public static var systemGroupedBackground: Color {
        return Color(UIColor.systemGroupedBackground)
    }
    
    /// The color for content layered on top of the main background of your grouped interface.
    public static var secondarySystemGroupedBackground: Color {
        return Color(UIColor.secondarySystemGroupedBackground)
    }
    
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    public static var tertiarySystemGroupedBackground: Color {
        return Color(UIColor.tertiarySystemGroupedBackground)
    }
    #endif
    
    // MARK: - tvOS-only
}
