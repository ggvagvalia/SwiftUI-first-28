//
//  MusicView.swift
//  SwiftUI-first-28
//
//  Created by gvantsa gvagvalia on 5/23/24.
//

import SwiftUI

struct MusicView: View {
    
    @Binding var isMusicButtonTapped: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ZStack(alignment: .bottomTrailing) {
                Color.yellow
                    .frame(width: 165, height: 232)
                    .cornerRadius(18)
                Image("thebestmusicalcompositions")
                    .resizable()
                    .frame(width: 82, height: 182)
            }
            VStack(alignment: .leading, spacing: 0, content: {
                Button(action: {
                    isMusicButtonTapped.toggle()
                }) {
                    Image("Frame 109")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                .position(CGPoint(x: 32, y: 32))
                Text("ჯუზონები და რამე")
                    .font(.system(size: 9))
                    .foregroundColor(.white)
                    .bold()
                    .position(CGPoint(x: 60, y: -15))
                (isMusicButtonTapped ? Text("Do we,\nReally?") :
                    Text("We love\nproperty\nwrappers and\nclosures"))
                .font(.system(size: 16))
                .bold()
                .foregroundColor(.white)
                .position(CGPoint(x: 70, y: -5))
            })
        }
    }
}

//#Preview {
//    MusicView(isMusicButtonTapped: .constant(false))
//}
