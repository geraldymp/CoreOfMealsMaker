//
//  File.swift
//  
//
//  Created by CODEXANB015 on 26/10/22.
//

import Combine

public protocol DataSource {
  associatedtype Request
  associatedtype Response
  
  func execute(request: Request?) -> AnyPublisher<Response, Error>
}
