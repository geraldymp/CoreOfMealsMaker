//
//  File.swift
//  
//
//  Created by CODEXANB015 on 26/10/22.
//

import Combine

public protocol LocaleDataSource {
  associatedtype Request
  associatedtype Response
  
  func list(request: Request?) -> AnyPublisher<[Response], Error>
  func add(entities: [Response]) -> AnyPublisher<Bool, Error>
  func updateFav(domain: Request?) -> AnyPublisher<Bool, Error>
  func checkFavorite(domain: Request?) -> AnyPublisher<Bool, Error>
}
