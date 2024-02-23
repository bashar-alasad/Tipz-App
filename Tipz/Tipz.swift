import SwiftUI

struct Tipz: View {
    
    
    var body: some View {
        
        HStack (spacing: 0.5){
            Text("T")
                .foregroundColor(.tipzRed)
            Text("i")
                .foregroundColor(.tipzBlue)
            Text("p")
                .foregroundColor(.tipzGreen)
            Text("z")
                .foregroundColor(.tipzOrange)
        }
        .font(.title)
        .bold()
        
    }
}

