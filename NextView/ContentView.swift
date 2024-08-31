//
//  ContentView.swift
//  NextView
//
//  Created by 内田豊彦 on 2024/08/31.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var isShowInputView = false
    
    var body: some View {
        VStack {
            Text("あなたの名前は？: \(inputText)")
                .padding()
            Button("名前を入力する") {
                isShowInputView = true
            }
            .sheet(isPresented: $isShowInputView) {
            InputView(inputText: $inputText)
            }
        }
    }
}

struct InputView: View {
    @Binding var inputText: String
    var body: some View {
        TextField("入力してください", text: $inputText)
            .background(.gray)
            .foregroundColor(.white)
            .padding()
    }
}
#Preview {
    ContentView()
}
