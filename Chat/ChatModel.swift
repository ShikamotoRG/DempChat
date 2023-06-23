//
//  ChatModel.swift
//  Chat
//
//  Created by Rafael on 12/06/2023.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
    
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imageString: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType, date: Date) {
        self.date = date
        self.type = type
        self.text = text
    }
    
    init(_ text: String, type: MessageType) {
        self.init(text, type: type, date: Date())
    }
    
}

extension Chat {
    
    static let sampleChat = [
    Chat(person: Person(name: "Molly", imageString: "image1"), messages: [
        Message("Hey Molly", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Please I need your help.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("How can i help you?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Maybe you send me some \"good\" jokes?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Hmm, idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("OMG so bad.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3))
    ], hasUnreadMessage: true),
    
    Chat(person: Person(name: "Viktor", imageString: "image0"), messages: [
        Message("Привет, чем занят", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 5)),
        Message("Я сейчас в процессе обучения. Изучаю новые функции в программировании.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 4)),
        Message("Звучит классно, продолжай в том же духе.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("И как, тяжело идет изучение,", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Да, уже по немногу втягиваюсь, так что теперь легче.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Жду с нетерпением твоего первого приложения.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2))
    ]),
    
    Chat(person: Person(name: "Saimon", imageString: "image3"), messages: [
        Message("Hey Saimon", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Can you show me new exercise, the last one was realy usefull.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Yes, sure. Come to me this week, i will show you something really cool.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Wow, sounds awasome, i will come, just wait for me.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))
    ], hasUnreadMessage: true),
    
    Chat(person: Person(name: "Ella", imageString: "image2"), messages: [
        Message("Hey Ella", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Please I need your help.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("How can i help you?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("Maybe you send me some \"good\" jokes?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
        Message("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("Hmm, idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("A fsh", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
        Message("OMG so bad.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1))
    ]),
    
    Chat(person: Person(name: "Gints", imageString: "image5"), messages: [
        Message("Hey Gints", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Can you show me new exercise, the last one was realy usefull.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Yes, sure. Come to me this week, i will show you something really cool.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
        Message("Wow, sounds awasome, i will come, just wait for me.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3))
    ]),
    ]
}
