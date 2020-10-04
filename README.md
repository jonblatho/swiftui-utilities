# SwiftUI Utilities

This is a collection of boilerplate stylized SwiftUI views and view styles, along with helpful extensions, to embed in your apps.

## Button Styles

### RightIconButtonStyle
Applies a style to a `Button` view with an icon on its trailing side.

#### Usage
    import SwiftUI
    import SwiftUIUtilities
    
    struct YourView: View {
        var body: some View {
            Button("Test") {
                // action
            }
                .buttonStyle(RightIconButtonStyle(icon: Image(systemName: "chevron.right"))
                .accentColor(.blue)
        }
    }

### RoundedRightIconButtonStyle
Applies a style to a `Button` view with a rounded rectangle background and icon on its trailing side. This button style is similar to that found in iOS's Share sheet.

#### Usage
    import SwiftUI
    import SwiftUIUtilities
    
    struct YourView: View {
        var body: some View {
            Button("Test") {
                // action
            }
                .buttonStyle(RoundedRightIconButtonStyle(icon: Image(systemName: "chevron.right"), backgroundColor: .blue)
                .accentColor(.white)
        }
    }

## Colors

SwiftUI Utilities provides some `Color` extensions for frequently used system colors that are available from `UIColor` or `NSColor` but not in SwiftUI's `Color` structure, like system background colors.
