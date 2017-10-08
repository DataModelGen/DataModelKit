//
//  DataModelEntity.swift
//  DataModelKit
//
//  Created by Allan Vialatte on 02/10/2017.
//

import Foundation
import SWXMLHash

public struct Entity {
  public let name: String

  public let documentVersion: String
  public let systemVersion: String
  public let minimumToolsVersion: String
  public let lastSavedToolsVersion: String
  public let attributes: [Attribute]
}

extension Entity {
  
  public init(with node: XMLIndexer) throws {
    guard let name = node.element?.attribute(by: "name")?.text else {
      throw DataModelError.parserEntityNameError
    }
    self.name = name
    self.documentVersion = node.element?.attribute(by: "documentVersion")?.text ?? ""
    self.systemVersion = node.element?.attribute(by: "systemVersion")?.text ?? ""
    self.minimumToolsVersion = node.element?.attribute(by: "minimumToolsVersion")?.text ?? ""
    self.lastSavedToolsVersion = node.element?.attribute(by: "lastSavedToolsVersion")?.text ?? ""
    self.attributes = node["attribute"].all.flatMap { try? Attribute.init(with: $0) }
  }
}
