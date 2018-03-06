//
//  FilterStructClubsOrgs.swift
//  MUnchMates
//
//  Created by Michael Ulrich on 2/18/18.
//  Copyright © 2018 Michael Ulrich. All rights reserved.
//

import Foundation
import Firebase

struct FilterStructClubsOrgs {
    let clubsOrgsName: String?
    let ref: DatabaseReference?
    
    init() {
        self.clubsOrgsName = ""
        self.ref = nil
    }
    
    init(clubsOrgsName: String) {
        self.clubsOrgsName = clubsOrgsName
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        clubsOrgsName = (snapshotValue["clubsOrgsName"] as? String)!
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "clubsOrgsName": clubsOrgsName as Any
        ]
    }
}
