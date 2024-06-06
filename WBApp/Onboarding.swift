//
//  Onboarding.swift
//  WBApp
//
//  Created by Михаил Ганин on 05.06.2024.
//

import SwiftUI

struct Onboarding: View {
    @State var showModel = false
    var body: some View {
        VStack {
            Image("Onboarding_Image")
                .frame(width: Constants.Image.widthForImage, height: Constants.Image.heightForImage)
                .offset(y: Constants.Image.topOfImage)
            Text("Общайтесь с друзьями и близкими легко")
                .fontWeight(.bold)
                .font(.custom("SF Pro Display", size: Constants.Size.size24))
                .multilineTextAlignment(.center)
                .frame(width: Constants.Text.widthForText, height: Constants.Text.heightForText)
                .offset(y: Constants.Offset.offset)
            
            Button {
                
            } label: {
                Text("Пользовательское соглашение")
            }
            .frame(width: Constants.wight, height: Constants.Size.size24)
            .buttonStyle(.plain)
            .font(.custom("SF Pro Display", size: Constants.Size.size14))
            
            .offset(y: Constants.Offset.offsetForButton)
            
            Button("Начать общаться", action:  {
                showModel = true
            })
            .frame(width: 327, height: 52)
            .background(Color(red: 154/255, green: 65/255, blue: 254/255, opacity: 1))
            .cornerRadius(Constants.radius)
            .foregroundColor(.white)
            
            .sheet(isPresented: $showModel) {
                NextPage(showModel: $showModel)
            }
            .offset(y: Constants.Offset.offsetForButton)
        }
    }
}

#Preview {
    Onboarding()
}

private enum Constants {
    enum Image {
        static let widthForImage: CGFloat = 262.0
        static let heightForImage: CGFloat = 271.0
        static let topOfImage: CGFloat = -100.0
    }
    enum Text {
        static let widthForText: CGFloat = 280.0
        static let heightForText: CGFloat = 58.0
    }
    enum Size {
        static let size24: CGFloat = 24.0
        static let size14: CGFloat = 14.0
    }
    enum Offset {
        static let offset: CGFloat = -42.0
        static let offsetForButton: CGFloat = 160.0
    }
    static let wight: CGFloat = 212.0
    static let radius: CGFloat = 30.0
}
