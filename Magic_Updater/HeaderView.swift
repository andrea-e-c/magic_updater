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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.headline)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(theme: .bubblegum)
    }
}
