import SwiftUI

struct ContentView: View {
    
    @State private var IsShowSetting = false
    
    @State private var IsShowPinned = false
    
    @State private var IsShowTutorial = false
    
    @State private var hidePhysical: Bool = false
    @State private var hideMental: Bool = false
    @State private var hideSpiritual: Bool = false
    @State private var hideFinancial: Bool = false
    
    
    var body: some View {
        ZStack  {
            
            Color.tipzGray.ignoresSafeArea()
            
            VStack {
                
                VStack {
                    Text("Welcome,")
                        .font(.title)
                        .bold()
                    HStack {
                        Text("New")
                            .font(.title)
                            .bold()
                        Tipz()
                        Text("Are Waiting!")
                            .font(.title)
                            .bold()
                    }
                }
                
                
                ScrollView {
                    VStack {
                        
                        if !hidePhysical {
                            ButtonView(icon: "figure.run", clr: .tipzRed, title: 0, desc: 0)
                        }
                        
                        if !hideMental {
                            ButtonView(icon: "brain", clr: .tipzBlue, title: 10, desc: 10)
                        }
                        
                        if !hideSpiritual {
                            ButtonView(icon: "moon.fill", clr: .tipzOrange, title: 20, desc: 20)
                        }
                        
                        if !hideFinancial {
                            ButtonView(icon: "creditcard.fill", clr: .tipzGreen, title: 30, desc: 30)
                        }
                        
                        if !hidePhysical {
                            ButtonView(icon: "figure.run", clr: .tipzRed, title: 2, desc: 2)
                        }
                        
                        if !hideMental {
                            ButtonView(icon: "brain", clr: .tipzBlue, title: 12, desc: 12)
                        }
                        
                        if !hideSpiritual {
                            ButtonView(icon: "moon.fill", clr: .tipzOrange, title: 22, desc: 22)
                        }
                        if !hideFinancial {
                            ButtonView(icon: "creditcard.fill", clr: .tipzGreen, title: 32, desc: 32)
                        }
                        if !hidePhysical {
                            ButtonView(icon: "figure.run", clr: .tipzRed, title: 1, desc: 1)
                        }
                        
                        if !hideMental {
                            ButtonView(icon: "brain", clr: .tipzBlue, title: 11, desc: 11)
                        }
                        
                        if !hideSpiritual {
                            ButtonView(icon: "moon.fill", clr: .tipzOrange, title: 21, desc: 21)
                        }
                        
                        if !hideFinancial {
                            ButtonView(icon: "creditcard.fill", clr: .tipzGreen, title: 31, desc: 31)
                        }
                        
                        if !hidePhysical {
                            ButtonView(icon: "figure.run", clr: .tipzRed, title: 3, desc: 3)
                        }
                        
                        if !hideMental {
                            ButtonView(icon: "brain", clr: .tipzBlue, title: 13, desc: 13)
                        }
                        
                        if !hideSpiritual {
                            ButtonView(icon: "moon.fill", clr: .tipzOrange, title: 23, desc: 23)
                        }
                        if !hideFinancial {
                            ButtonView(icon: "creditcard.fill", clr: .tipzGreen, title: 33, desc: 33)
                        }
    
                    }
                    
                }
                .overlay(
                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.tipzGray]),
                                   startPoint: .center,
                                   endPoint: .bottom)
                        .frame(height: 300)
                        .padding(.top, 312)
                        .allowsHitTesting(false)
                )
                
                
                HStack {
                    
                // SETTINGS BUTTON //
                    
                    Button {
                        
                        IsShowSetting = true
                        
                    }  label: {
                        ZStack {
                            Circle()
                                .shadow(color:.gray, radius: 5, x: 0, y: 2)
                                .foregroundColor(Color.white)
                                .frame(width: 52 , height: 52)
                            
                            Image(systemName: "gearshape")
                                .foregroundColor(.black)
                                .font(.title2)
                            
                        }
                    }
                    .sheet(isPresented: $IsShowSetting )
                    {
                        SettingsView(hidePhysical: $hidePhysical, hideMental: $hideMental, hideSpiritual: $hideSpiritual, hideFinancial: $hideFinancial)
                            .presentationDetents([.height(300)])
                            .presentationDragIndicator(.visible)
                        
                    }
                    
                    
            //     TUTORIAL BUTTON      //
                    
                    Button {
                        
                        IsShowTutorial = true
                        
                    }  label: {
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 50 )
                                .foregroundColor(.white)
                                .frame(width: 109, height: 53)
                                .shadow(color:.gray, radius: 5, x: 0, y: 2)
                            Tipz()
                            
                        }
                    }
                    .sheet(isPresented: $IsShowTutorial ) {
                        TutorialView()
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.height(550)])

                    }
                        
                    
            //      PINNED BUTTON       //
                    
                        Button {
                            
                            IsShowPinned = true
                            
                        }  label: {
                            ZStack {
                                Circle()
                                    .shadow(color:.gray, radius: 5, x: 0, y: 2)
                                    .foregroundColor(Color.white)
                                    .frame(width: 52 , height: 52)
                                
                                
                                Image(systemName: "pin")
                                    .foregroundColor(.black)
                                    .font(.title2)
                                
                            }
                        }
                        .sheet(isPresented: $IsShowPinned ) {
                            PinnedView()
                                .presentationDragIndicator(.visible)

                        }
                        
                    }
                }
            }
        }
    }

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
