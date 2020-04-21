//
//  Error+SaveError.swift
//  ColorPicker
//
//  Created by Andre Simon on 20-04-20.
//  Copyright © 2020 Andre Simon. All rights reserved.
//

import Foundation

enum AlbumError: Error {
    case albumError
    case imageError
    case permissionError
}

extension AlbumError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .albumError:
            return NSLocalizedString("Couldn't create album", comment: "Invalid permissions")
        case .imageError:
            return NSLocalizedString("Couldn't save image", comment: "Invalid permissions")
        case .permissionError:
            return NSLocalizedString("You haven't authorized \(Bundle.main.displayName!) to save images yet.", comment: "Invalid permissions")
            
        }
    }
}
