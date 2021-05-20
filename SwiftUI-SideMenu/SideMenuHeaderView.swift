//
//  SideMenuHeaderView.swift
//  SwiftUI-SideMenu
//
//  Created by Martin Tom on 5/5/2021.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            VStack(alignment: .leading) {
                Image("albus")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Albus Dumbledore")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("Part-time tutor")
                    .font(.system(size:14))
                    .padding(.bottom, 24)
            
                    
                HStack(spacing: 4){
                    Text("10.5").bold()
                    Text("hours")
                    Spacer()
                }
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
