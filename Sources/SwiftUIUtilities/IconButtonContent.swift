import SwiftUI

internal struct IconButtonContent: View {
    /// The button label text.
    var label: ButtonStyleConfiguration.Label
    /// The icon to display on the trailing side of the button.
    var icon: Image
    
    var body: some View {
        HStack {
            label.foregroundColor(.accentColor)
            Spacer()
            icon.imageScale(.medium).foregroundColor(.accentColor)
        }
    }
}
