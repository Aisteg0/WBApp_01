//
//  NextPage.swift
//  WBApp
//
//  Created by Михаил Ганин on 05.06.2024.
//

import SwiftUI

struct NextPage: View {
    @Binding var showModel: Bool
    var body: some View {
        Button("Dissmis", role: .cancel) {
            showModel = false
        }   
    }
}
