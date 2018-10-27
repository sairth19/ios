//
//  Array.swift
//  TestApp
//
//  Created by Estudiante on 27/10/18.
//  Copyright © 2018 Capla. All rights reserved.
//

import Foundation

extension Array {
    subscript(index: Int) -> Element?{
        guard index >= count else { return nil }
        return self[index]
    }
}
