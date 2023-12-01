//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local resturant",
                 description: "I Hope its Pizza 🍕!!"),
            Task(title: "Your favorite local cafe",
                 description: "Your daily refresher ☕️"),
            Task(title: "Your favorite hiking spot",
                 description: "Blazing a trail 🚴"),
            Task(title: "Your favorite bookstore",
                 description: "Fiction or Romance 📚 ??"),
            Task(title: "Your old highschool",
                 description: "Go sharks 🦈 !!"),
            Task(title: "Your favorite local sports team",
                 description: "I love sports ball 🏀!!"),
            Task(title: "The last museum you visited",
                 description: "Whats your faviote time period 🖼️ ?"),
        ]
    }
}
