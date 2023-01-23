//
//  JSONReader.swift
//  FolkLegends2
//
//  Created by Luciano Uchoa on 23/01/23.
//

import Foundation


func readLocalJSONFile(forName name: String) -> Data? {
    do {
        if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
            let fileUrl = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: fileUrl)
            return data
        }
    } catch {
        print("error: \(error)")
    }
    return nil
}

func parse(jsonData: Data) -> sampleStory? {
    do {
        let decodedData = try JSONDecoder().decode(sampleStory.self, from: jsonData)
        return decodedData
    } catch {
        print("error: \(error)")
    }
    return nil
}
