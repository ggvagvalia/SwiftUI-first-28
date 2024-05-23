//
//  RowView.swift
//  SwiftUI-first-28
//
//  Created by gvantsa gvagvalia on 5/23/24.
//

import SwiftUI

struct RowView: View {
    var header: String
    var detail: String
    
    var body: some View {
        HStack {
            Image("Frame")
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.leading, -10)
                .padding(10)
            VStack(alignment: .leading) {
                Text(header)
                    .font(.headline)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                Text(detail)
                    .font(.system(size: 10))
                    .foregroundColor(.gray)
                    .padding(.trailing, 20)
            }
        }
        .padding(.leading, 35)
        .padding(.trailing, 25)
    }
}
