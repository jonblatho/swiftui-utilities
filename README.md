# SwiftUI Utilities

This is a collection of boilerplate stylized SwiftUI views and view styles to embed in your apps.

## Button Styles

### RoundedIconButtonStyle
Applies a style to a `Button` view with a rounded rectangle background and icon. This button style is similar to that found in iOS's Share sheet.

#### Usage
    import SwiftUI
    import SwiftUIUtilities
    
    struct YourView: View {
        var body: some View {
            Button("Test") {
                // action
            }.buttonStyle(RoundedIconButtonStyle(backgroundColor: .blue, icon: Image(systemName: "chevron.right")).accentColor(.white)
        }
    }
