import SwiftUI

struct ButtonView: View {
    
    @State private var extendButton = false
    
    var icon: String
    var clr: Color
    var title: Int
    var desc: Int

    init(icon : String, clr : Color, title: Int, desc: Int) {
        self.icon = icon
        self.clr = clr
        self.title = title
        self.desc = desc

    }
    

var body: some View {
        
    HStack {
        Button(action: {
            
            extendButton.toggle()
            
        }) {
            
            VStack {
                Image(systemName: icon)
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .padding(.all, 60.0)
                    .background(clr)
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                
                
                Spacer()
            }
            
            VStack {
                HStack{
                    Text(titleTipz[title])
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 10)
                    Spacer()
                }
                Text(textTipz[desc])
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    //.padding(.bottom, extendButton ? 40 : 20)
                    .fixedSize(horizontal: false, vertical: extendButton)

                Spacer()
                if extendButton {
                    HStack {
                        Button(action: {
                            // Share action
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(clr)
                                .padding()
                        }
                        
                        Button(action: {
                            // Pin action
                        }) {
                            Image(systemName: "pin")
                                .foregroundColor(clr)
                                .padding()
                        }
                    }
                }
            }
            
            Spacer()
            
            Image(systemName: extendButton ? "chevron.compact.down" : "chevron.compact.right")
                .foregroundColor(clr)
                .imageScale(.large)
                .font(.title)
                .padding(.trailing, 10)
        }
        //.frame(width: 350, height: extendButton ? 275 : 80)
        .frame(width: 350, height: extendButton ? nil : 80)
        .background(Color.white)
        .cornerRadius(15)
        .animation(.spring (response: 0.1 , dampingFraction: 1  , blendDuration: 1), value: extendButton)
    }
    .padding(.vertical, 1)
}
}
