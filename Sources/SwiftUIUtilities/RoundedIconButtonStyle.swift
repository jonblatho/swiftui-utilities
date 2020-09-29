import SwiftUI

/**
 Styles a button with a rounded rectangle background and icon. This button style is similar to that found in iOS's Share sheet.
 
 Use the icon parameter to provide an icon to use in the button, and provide a background color in the backgroundColor parameter. You can control the color of the text and icon by setting the Button's accent color.
 */
public struct RoundedButtonStyle: ButtonStyle {
    /// The icon to display on the trailing side of the button.
    var icon: Image
    /// The background color of the button.
    var backgroundColor: Color
    
    public func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label.foregroundColor(.accentColor)
            Spacer()
            icon.imageScale(.medium).foregroundColor(.accentColor)
        }
        .padding(12).background(RoundedRectangle(cornerRadius: 12, style: .continuous).fill(backgroundColor))
    }
}

internal struct RoundedButtonStyle_Previews: PreviewProvider {
    internal static var previews: some View {
        Group {
            Button("Test") { }
                .buttonStyle(RoundedButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right"), backgroundColor: .gray)).accentColor(.white)
            
            Button("Test") { }
                .buttonStyle(RoundedButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right"), backgroundColor: .gray)).accentColor(.white).environment(\.layoutDirection, .rightToLeft)
            
            Button("Test") { }
                .buttonStyle(RoundedButtonStyle(icon: Image(systemName: "chevron.left.slash.chevron.right"), backgroundColor: .gray)).accentColor(.white).environment(\.colorScheme, .dark)
        }
    }
}
