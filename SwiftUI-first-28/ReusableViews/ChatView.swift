//
//  ChatView.swift
//  SwiftUI-first-28
//
//  Created by gvantsa gvagvalia on 5/23/24.
//

import SwiftUI

struct ChatView: View {
    
    @Binding var isChatTapped: Bool
    
    var body: some View {
        ZStack {
            ZStack(alignment: .bottomTrailing) {
                (isChatTapped ? Color.cyan : Color.orange)
                Image("socialmedia_tech_09-1")
                    .resizable()
                    .frame(width: 97, height: 93)
            }
            VStack(alignment: .leading, spacing: 5, content: {
                
                Button(action: {
                    isChatTapped.toggle()
                }) {
                    Image("Frame 109-2")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                Text("ჩატაობა")
                    .font(.system(size: 9))
                    .bold()
                    .foregroundColor(.white)
            })
            .position(CGPoint(x: 32, y: 38))
        }    }
}

//#Preview {
//    ChatView(isChatTapped: .constant(false))
//}
