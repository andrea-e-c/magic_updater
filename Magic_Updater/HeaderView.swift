//
//  HeaderView.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/21/21.
//

import SwiftUI

struct HeaderView: View {
    let theme: Theme
    
    var body: some View {
        ZStack{
        Rectangle()
            .stroke()
            .fill(.yellow)
            .background(.yellow)
            .frame(height: 50)
        Text("Magic Updater")
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(theme: .yellow)
    }
}
