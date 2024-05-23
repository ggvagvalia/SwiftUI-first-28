//
//  ContentView.swift
//  SwiftUI-first-28
//
//  Created by gvantsa gvagvalia on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isButtonTapped = false
    @State var isChatTapped = false
    @State var isMusicButtonTapped = false
    
    private var headers = ["რა დაუწუნა ბარბარემ ნიკის?", "რა ზომის ფეხი აქვს ვასოს?", "რა სიმაღლისაა ანჟელა ew?", "რატომ გაებუტა ბარბარეს ჭეპეტე?", "MVC vs MVVM", "ნეტავ რამდენი ხანი გაგრძელდება ეს?"]
    private var detailedText = ["ნიკის ამაზე ჯერ განცხადება არ გაუკეთებია, ფანები ელოდებიან რომ რომელიმე მალე სიჩუმეს გაფანტავს", "დეველოპერებმა განაცხადეს რომ თუ მას 42 და მეტი ზომა ფეხი აქვს მის მოსმენას აზრი არ აქვს და კომენტარის გარეშე დატოვებენ ლექციას", "ანჟელა ew არის მეტრაოთხმოცი, რაც ნიშნავს რომ ის დაახლოებით ტეილორ Swift-ის სიმაღლისაა და დიდი ფეხი აქვს", "ამჟამინდელი მონაცემებით ისინი 2 დღე არ ესაუბრებოდნენ ერთმანეთს და როგორც გაირკვა ანიგნორებს აიგნორებდნენ რაღაც იგნორში.", "აი ეს MVC გასაგებია, მაგრამ MVVM ჩემამდე არ დადის რა, ამ სვიბთ იუაიში სად ვიყენებთ მაგას?", "აღმოჩნდა რომ დეველოპერები ძალიან გახარებულები არიან SwiftUI-ით. ნეტავ რამდენი ხანი გაგრძელდება Honeymoon phase?" ]
    
    private var combinedData: [(header: String, detail: String)] {
        zip(headers, detailedText).map {($0, $1)}
    }
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            // MARK: - Setup Header Text
            VStack {
                Text("svibti iuai eksersaisi")
                    .font(.system(size: 34))
                    .bold()
                    .foregroundColor(.white)
                ZStack {
                    Color.clear
                        .frame(width: 343, height: 232)
                    HStack(spacing: 13) {
                        // MARK: - Music View
                        MusicView(isMusicButtonTapped: $isMusicButtonTapped)
                            .frame(width: 165, height: 232)
                            .cornerRadius(18)
                        // MARK: - Chat View
                        VStack(spacing: 12) {
                            ChatView(isChatTapped: $isChatTapped)
                                .frame(width: 165, height: 110)
                                .cornerRadius(18)
                            // MARK: - News View
                            ZStack() {
                                Color.purple
                                    .frame(width: 165, height: 110)
                                    .cornerRadius(18)
                                NewsView()
                            }
                            .frame(width: 165, height: 110)
                            .cornerRadius(18)
                        }
                    }
                }
                // MARK: - Setup List
                ZStack {
                    List {
                        ForEach(combinedData, id: \.header) { data in
                            RowView(header: data.header, detail: data.detail)
                                .listRowBackground(Color.clear)
                                .listRowSeparatorTint(.white)
                                .alignmentGuide(.listRowSeparatorLeading) { d in
                                    d[.leading] }
                        }
                    }
                    .frame(width: 450)
                    .safeAreaPadding(.bottom)
                    .safeAreaPadding(.top)
                    .listStyle(PlainListStyle())
                    VStack {
                        Spacer()
                        
                        RefreshButton(isButtonTapped: $isButtonTapped)
                            .padding(.bottom, 15)
                            .padding(.leading, 300)
                            .safeAreaPadding(.bottom)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
