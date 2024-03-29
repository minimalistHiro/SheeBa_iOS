//
//  Notification.swift
//  SheeBa
//
//  Created by 金子広樹 on 2024/02/13.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct NotificationModel: Hashable, Identifiable {
    @DocumentID var id: String?
    let title: String
    let text: String
    let isRead: Bool
    let url: String
    let imageUrl: String
    let timestamp: Timestamp
    
    init(data: [String: Any]) {
        self.title = data[FirebaseConstants.title] as? String ?? ""
        self.text = data[FirebaseConstants.text] as? String ?? ""
        self.isRead = data[FirebaseConstants.isRead] as? Bool ?? false
        self.url = data[FirebaseConstants.url] as? String ?? ""
        self.imageUrl = data[FirebaseConstants.imageUrl] as? String ?? ""
        self.timestamp = data[FirebaseConstants.timestamp] as? Timestamp ?? Timestamp()
    }
}

let previewOfNotificationModel = NotificationModel.init(data: [
    FirebaseConstants.title: "タイトル",
    FirebaseConstants.text: "テキスト",
    FirebaseConstants.isRead: false,
    FirebaseConstants.url: "",
    FirebaseConstants.imageUrl: "",
    FirebaseConstants.timestamp: Timestamp()
])
