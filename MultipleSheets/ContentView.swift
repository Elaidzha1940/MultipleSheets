//  /*
//
//  Project: MultipleSheets
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 30.10.2023.
//
//  */

import SwiftUI

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - use a binding
// 2 - use multiple .sheets
// 3 - use $item

struct ContentView: View {
    @State var selectedModel: RandomModel? = nil /*RandomModel(title: "Start")*/
    
//    @State var showSheet: Bool = false
//    @State var showSheet2: Bool = false
    
    var body: some View {
        
        ZStack {
            Rectangle()
            .fill(Gradient(colors: [.white, .black]))
                .brightness(-0.2)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                
                Button("First") {
                   // selectedModel = RandomModel(title: "One")
                   //showSheet.toggle()
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(15)
                .padding()
                
//                .sheet(isPresented: $showSheet, content: {
//                    //NextScreen(selectedModel: $selectedModel)
//                    NextScreen(selectedModel: RandomModel(title: "One"))
//                })
                
                Button("Second") {
                    //selectedModel = RandomModel(title: "Two")
                    //showSheet2.toggle()
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(15)
                .padding()
                
//                .sheet(isPresented: $showSheet2, content: {
//                    NextScreen(selectedModel: RandomModel(title: "Two"))
//                })
            }
        }
        .sheet(item: $selectedModel, content: <#T##(Identifiable) -> View#>)
//        .sheet(isPresented: $showSheet, content: {
//            NextScreen(selectedModel: selectedModel)
//                .font(.system(size: 20, weight: .bold, design: .rounded))
//                .foregroundColor(.black)
//                .frame(maxWidth: .infinity)
//                .frame(height: 55)
//                .background(Color.white)
//                .cornerRadius(15)
//                .padding()
//        })
    }
}

struct NextScreen: View {
    //@Binding var selectedModel: RandomModel
     var selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.system(size: 30, weight: .bold, design: .rounded))
    }
}

#Preview {
    ContentView()
}


