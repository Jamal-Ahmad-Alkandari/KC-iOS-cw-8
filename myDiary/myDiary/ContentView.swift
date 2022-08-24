//
//  ContentView.swift
//  myDiary
//
//  Created by Jamal Al-kandari on 20/08/2022.
//

import SwiftUI

struct ContentView: View { // Contant View -->
    let Colorechoise = [Color.red,Color.black,Color.blue,Color.yellow]
    
    @State var Choise : Color = Color.black
    @State var Diary = ""

    
    
    var body: some View { // Body <--
        
        
        
        NavigationView{ // Navigation View -->
            ZStack{ // Zstack -->
                
                
                
                Color(#colorLiteral(red: 0.03575813025, green: 0, blue: 0.1644856036, alpha: 0.8470588235)).ignoresSafeArea()
                
                VStack{ // Vstack -->
                    
                    
                    
                    
                    
                    
                    Text("Chose a color 🎨")
                        .foregroundColor(.white)
                        .padding()
                        .font(.system(size: 50))
                    HStack{ // HStack -->
                        
                        ForEach (Colorechoise, id:\.self) { color in
                            
                            Circle()
                                .fill(color)
                                .onTapGesture {
                                    Choise = color
                                    
                                }
                        }
                                
                        
                        
                    } .padding() // HStack -->
                    
                    Spacer()
                    
                    Text("Write Here ✍️")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    
                TextField("\twrite here", text: $Diary)
                        .background(Color.white).opacity(0.3)
                        .padding()
                        .cornerRadius(20)
                        .frame(width: 350, height: 300 )
                        .font(.largeTitle)
                    
                    NavigationLink(destination: SsecondView(color: $Choise, type: $Diary)) {
                        Text("حفظ")
                            .font(.system(size: 60))
                            .padding()
                            .background(.green)
                            .padding()
                    }
                    
                    
                    
                                
                } // Vstack <--
                
                .navigationTitle(Text("My Diary 📓"))
                
                
                
                
            } // Zstack <--
            
            
        }.accentColor(Color.white)
        // Navigation View <--
        
        
        
        
    } // Body -->
    
    
    
    
} // Contant View <--





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
