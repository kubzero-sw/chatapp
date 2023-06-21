//
//  Storage.swift
//  chatapp
//
//  Created by Rashid Karina on 03.05.2023.
//

import FirebaseStorage

public class StorageManager {

    static let shared = StorageManager()

    private let bucket = Storage.storage().reference()

    public enum IGStorageManagerError: Error {
        case failedToDownload
    }

   

  

  

}
