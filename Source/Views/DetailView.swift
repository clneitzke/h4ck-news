//
//  DetailView.swift
//  H4ck News
//
//  Created by Cleber Neitzke on 18/05/20.
//  Copyright © 2020 Cleber Neitzke. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

