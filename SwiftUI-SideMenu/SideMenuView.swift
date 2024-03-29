//
//  SideMenuView.swift
//  SwiftUI-SideMenu
//
//  Created by Martin Tom on 5/5/2021.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                // Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                
                // Options Views (cell items)
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SideMenuOptionView(viewModel: option)
                        })
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
