//
//  File.swift
//  
//
//  Created by CODEXANB015 on 26/10/22.
//

import Combine

public protocol UseCase {
  associatedtype Request
  associatedtype Response
  
  func execute(request: Request?) -> AnyPublisher<Response, Error>
  func process(request: Request?) -> AnyPublisher<Response, Error>
}
