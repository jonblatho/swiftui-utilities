import SwiftUI

/**
 Styles a button with an icon on its trailing side.
 
 Use the icon parameter to provide an icon to use in the button. You can control the color of the text and icon by setting the Button's accent color.
 */
public struct IconButtonStyle: ButtonStyle {
    /// The icon to display on the trailing side of the button.
    var icon: Image
    
    public func makeBody(configuration: Configuration) -> some View {
        IconButtonContent(label: configuration.label, icon: icon)
    }
}

internal struct IconButtonStyle_Previews: PreviewProvider {
    internal static var previews: some View {
        Group {
            Button("Test") { }
                .buttonStyle(IconButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right")))
                .accentColor(.blue)
            
            Button("Test") { }
                .buttonStyle(IconButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right")))
                .accentColor(.blue)
                .environment(\.layoutDirection, .rightToLeft)
            
            Button("Test") { }
                .buttonStyle(IconButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right")))
                .accentColor(.blue)
                .environment(\.colorScheme, .dark)
        }
    }
}
