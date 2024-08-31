//
//  ContentView.swift
//  NextView
//
//  Created by 内田豊彦 on 2024/08/31.
//

import SwiftUI

struct ContentView: View {
    @State  var inputText = ""
    @State var isShowNextView = false
    
    var body: some View {
        VStack{
            Text("あなたのなまえは?: \(inputText)")
                .padding()
            Button("名前を入力する"){
                isShowNextView = true
            }
            .sheet(isPresented: $isShowNextView) {
                inputView(inputText: $inputText)
            }
        }
    }
}

struct inputView: View {
    @Binding var inputText : String
    var body: some View {
        TextField("", text: $inputText)
            .background(.gray)
            .padding()
    }
}
#Preview {
    ContentView()
}
