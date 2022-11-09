//
//  File.swift
//  
//
//  Created by CODEXANB015 on 26/10/22.
//

import Foundation

public protocol Mapper {
  associatedtype Request
  associatedtype Response
  associatedtype Entity
  associatedtype Domain
  associatedtype SingleDomain
  associatedtype SingleEntity
  
  func transformResponseToEntity(request: Request?, response: Response) -> Entity
  func transformEntityToDomain(entity: Entity) -> Domain
  func transformDomainToEntity(domain: SingleDomain) -> SingleEntity
}
