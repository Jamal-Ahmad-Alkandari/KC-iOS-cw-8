//
//  SsecondView.swift
//  myDiary
//
//  Created by Jamal Al-kandari on 20/08/2022.
//

import SwiftUI

struct SsecondView: View {
    @Binding var color : Color
    @Binding var type : String

    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            Text(type)
                .font(.system(size: 100))
                .foregroundColor(.white)
        }
    }
}

struct SsecondView_Previews: PreviewProvider {
    static var previews: some View {
        SsecondView(color: .constant(.red), type: .constant("Katkoot"))
    }
}
