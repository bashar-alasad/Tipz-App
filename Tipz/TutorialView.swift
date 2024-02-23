import SwiftUI

struct TutorialView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        VStack{
            HStack {
                Text("Welcome to")
            
                    .font(.largeTitle)
                    .bold()
                
                Tipz()
                Text("!")
                    .font(.largeTitle)
                    .bold()
             
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
                .padding([.leading])
                
            }   //end HStack
            
            Divider()
            
            Text("Welcome to Tipz! We are so glad to have you here! This is a quick tutorial on how to use our app. Everyday our tipz are updated and replaced with new tipz so that you can learn something new about different types of health. Each tip has tailored information.")
                .multilineTextAlignment(.center)
                .padding()
            
            Divider()
            ButtonView(icon: "figure.run", clr: .tipzRed, title: 0, desc: 0)
            Divider()
            Text("The Tipz are catagorized into four different catagories Physical\(Image(systemName: "figure.run")), Mental \(Image(systemName: "brain")), Financial \(Image(systemName:"creditcard.fill")) and Spiritual \(Image(systemName:"moon.fill")). If you like a tip, you can pin it by pressing \(Image(systemName:"pin")). You can also share the tip with a friend by pressing \(Image(systemName:"square.and.arrow.up")).")
                .multilineTextAlignment(.center)
                .padding()

         
            
        } //end VStack
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
