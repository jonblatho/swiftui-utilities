import SwiftUI

/**
 Styles a button with a rounded rectangle background and icon next to the label, on its leading side.
 
 Use the icon parameter to provide an icon to use in the button, and provide a background color in the backgroundColor parameter. You can control the color of the text and icon by setting the Button's accent color.
 */
public struct RoundedLeadingIconButtonStyle: ButtonStyle {
    /// The icon to display on the trailing side of the button.
    public var icon: Image
    /// The background color of the button.
    public var backgroundColor: Color
    
    public init(icon: Image, backgroundColor: Color) {
        self.icon = icon
        self.backgroundColor = backgroundColor
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        LeadingIconButtonContent(label: configuration.label, icon: icon)
            .padding(16)
            .background(RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(backgroundColor))
    }
}

internal struct RoundedLeftIconButtonStyle_Previews: PreviewProvider {
    internal static var previews: some View {
        Group {
            Button("Test") { }
                .buttonStyle(RoundedLeadingIconButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right"), backgroundColor: .gray))
                .accentColor(.white)
            
            Button("Test") { }
                .buttonStyle(RoundedLeadingIconButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right"), backgroundColor: .gray))
                .accentColor(.white)
                .environment(\.layoutDirection, .rightToLeft)
            
            Button("Test") { }
                .buttonStyle(RoundedLeadingIconButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right"), backgroundColor: .gray))
                .accentColor(.white)
                .environment(\.colorScheme, .dark)
        }
    }
}
