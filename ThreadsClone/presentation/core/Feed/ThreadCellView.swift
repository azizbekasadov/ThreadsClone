//
//  ThreadCellView.swift
//  ThreadsClone
//
//  Created by Azizbek Asadov on 19.10.2025.
//

import SwiftUI

struct User: Identifiable {
    let id: String
    let username: String
    let userAvatarImageName: String
    
    init(
        id: String = UUID().uuidString,
        username: String,
        userAvatarImageName: String
    ) {
        self.id = id
        self.username = username
        self.userAvatarImageName = userAvatarImageName
    }
}

struct ThreadData: Identifiable {
    let id: String
    let user: User
    let created: Date
    let captions: String
    let isLiked: Bool
    let likes: Int
    let comments: Int
    let reports: Int
    
    init(
        id: String = UUID().uuidString,
        user: User,
        created: Date,
        captions: String,
        isLiked: Bool,
        likes: Int,
        comments: Int,
        reports: Int
    ) {
        self.id = id
        self.user = user
        self.created = created
        self.captions = captions
        self.isLiked = isLiked
        self.likes = likes
        self.comments = comments
        self.reports = reports
    }
}

struct ThreadCellView: View {
    let data: ThreadData
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image(data.user.userAvatarImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(data.user.username)
                            .font(.footnote)
                            .foregroundStyle(.primary)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text(data.created.formatted(.dateTime.week(.defaultDigits)) + "w")
                            .font(.caption)
                            .foregroundStyle(Color(uiColor: .systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(uiColor: .darkGray))
                        }

                    }
                    
                    Text(data.captions)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                    
                    HStack(spacing: 16) {
                        HStack {
                            Button {
                                
                            } label: {
                                Image(data.isLiked ? "Feed/heart.fill" : "Feed/heart")
                            }
                        
                            if data.likes > 0 {
                                Text(data.likes.formatted())
                                    .font(.caption)
                            }
                        }

                        HStack {
                            Button {
                                
                            } label: {
                                Image("Feed/message")
                            }
                            
                            if data.comments > 0 {
                                Text(data.comments.formatted())
                                    .font(.caption)
                            }
                        }
                        
                        HStack {
                            Button {
                                
                            } label: {
                                Image("Feed/repost")
                            }
                            
                            if data.reports > 0 {
                                Text(data.reports.formatted())
                                    .font(.caption)
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            Image("Feed/send")
                        }
                    }
                    .foregroundStyle(Color.black)
                    .padding(.vertical, 8)
                }
            }
        }
    }
}

#Preview {
    ThreadCellView(
        data: .danySample
    )
}


extension ThreadData {
    static let danySample = ThreadData(
        user: .init(
            username: "daenerys.targaryen1",
            userAvatarImageName: "Sample/daenerys"
        ),
        created: Date(),
        captions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
        isLiked: true,
        likes: 13,
        comments: 0,
        reports: 1
    )
}
