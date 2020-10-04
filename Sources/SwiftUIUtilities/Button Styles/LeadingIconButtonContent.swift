import SwiftUI

internal struct LeadingIconButtonContent: View {
    /// The button label text.
    var label: ButtonStyleConfiguration.Label
    /// The icon to display on the trailing side of the button.
    var icon: Image
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            icon
                .imageScale(.medium)
                .foregroundColor(.accentColor)
                .font(Font.system(.headline))
            label
                .foregroundColor(.accentColor)
                .font(Font.system(.headline))
            Spacer()
        }
    }
}
