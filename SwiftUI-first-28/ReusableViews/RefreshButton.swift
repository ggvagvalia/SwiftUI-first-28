//
//  RefreshButton.swift
//  SwiftUI-first-28
//
//  Created by gvantsa gvagvalia on 5/23/24.
//

import SwiftUI

struct RefreshButton: View {
    @Binding var isButtonTapped: Bool
    
    var body: some View {
        Button(action: {
            isButtonTapped.toggle()
        }) {
            Image(systemName: "arrow.clockwise")
                .font(.system(size: 40))
                .foregroundColor(isButtonTapped ? .white : .blue)
                .padding(10)
                .background(isButtonTapped ? .blue : .white)
                .clipShape(Circle())
        }
    }
}

//#Preview {
//    RefreshButton(isButtonTapped: .constant(false))
//}
