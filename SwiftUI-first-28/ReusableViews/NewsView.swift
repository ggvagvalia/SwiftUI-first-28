//
//  NewsView.swift
//  SwiftUI-first-28
//
//  Created by gvantsa gvagvalia on 5/23/24.
//

import SwiftUI

struct NewsView: View {
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.purple
            Image("socialmedia_tech_09-2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 66, height: 86)
        }
        VStack(alignment: .leading, spacing: 5, content: {
            Image("Frame 110")
                .resizable()
                .frame(width: 32, height: 32)
            Text("ცეცხლოვანი\nსიახლეები")
                .font(.system(size: 9))
                .bold()
                .foregroundColor(.white)
        })
        .position(CGPoint(x: 40, y: 48))
    }
}

//#Preview {
//    NewsView()
//}
