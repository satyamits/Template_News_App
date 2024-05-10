//
//  Machines+API.swift
//  Model
//
//  Created by Satyam Singh on 09/05/24.
//  Copyright © 2024 Nickelfox. All rights reserved.
//

import Foundation
import FoxAPIKit

extension Machine {
    
    static public func fetchMachines(id: String, completion: @escaping (APIResult<Machine>) -> Void) {
        let machineRouter = MachineRouter.fetchMachines(id: id)
        FoxAPIClient.shared.request(machineRouter, completion: completion)
    }
    
}
