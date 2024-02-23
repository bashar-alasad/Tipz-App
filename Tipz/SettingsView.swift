import SwiftUI
struct SettingsView: View {
    @State private var hidePinned = true
    
    @Binding var hidePhysical: Bool
    @Binding var hideMental: Bool
    @Binding var hideSpiritual: Bool
    @Binding var hideFinancial: Bool
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        //ButtonView(icon: "heart", clr: .tipzRed, title: 1, desc: 1, type: 1)
        


        VStack {
            HStack {
                Text("Settings")
                    .font(.title2)
                    .bold()
                
                Spacer()
                

                Button {
                    dismiss()
                } label: {
                    ZStack {
                    Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                            .opacity(0.3)
                    
                    Image(systemName: "xmark")
                        .bold()
                        .foregroundColor(.gray)
                }
                }

                
            }
            Toggle("Hide Pinned Tips",isOn: $hidePinned)
            Divider()
            
            Toggle("Hide Physical Tips", isOn: $hidePhysical)
            Divider()
            
            Toggle("Hide Mental Tips", isOn: $hideMental)
            Divider()
            
            Toggle("Hide Financial Tips", isOn: $hideFinancial)
            Divider()
            
            Toggle("Hide Spiritual Tips", isOn: $hideSpiritual)
            
        }
        .padding()


    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(hidePhysical: .constant(true), hideMental: .constant(true), hideSpiritual: .constant(true), hideFinancial: .constant(true))
    }
}
