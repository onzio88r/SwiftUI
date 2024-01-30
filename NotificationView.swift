//
//  NotificationView.swift
//  Atom
//
//  Created by Daniele Rapali - Technogym on 30/01/24.
//  Copyright © 2024 Igloocy srl. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    var title: String
    var subtitle: String
    var time: String
    
    var body: some View {
    
        GeometryReader { _ in
            VStack(alignment: .leading, spacing: 8) {
                ZStack {
                    HStack {
                        if let image = UIImage(named: AppConfig.appIcon()) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 6))
                                .padding(.leading, 8)
                                .padding(.trailing, 7)
                        }
                        
                        Text(AppConfig.appName)
                            .font(
                                Font.system(size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white.opacity(0.2))
                        
                        Spacer()
                        Text(time)
                            .font(
                                Font.system(size: 12)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.white.opacity(0.2))
                            .padding(.trailing, 16)
                        
                    }
                    .frame(maxWidth: .infinity, minHeight: 20, maxHeight: 20)
                    
                    
                    
                }
                .frame(maxWidth: .infinity, minHeight: 20, maxHeight: 20)
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {   
                        Text(title)
                            .font(
                                Font.system(size: 14)
                                    .weight(.bold)
                            )
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white.opacity(0.5))
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 0)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {   
                        Text(subtitle)
                            .font(
                                Font.system(size: 14)
                                    .weight(.light)
                            )
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white.opacity(0.5))
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 0)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    
                }
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 10)
            .background(.white.opacity(0))
            .background(.black.opacity(0.45))
            .cornerRadius(12)
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    NotificationView(title: "Title", subtitle: "Subtitle", time: "1h ago")
}
