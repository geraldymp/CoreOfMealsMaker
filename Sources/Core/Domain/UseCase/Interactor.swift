//
//  File.swift
//  
//
//  Created by CODEXANB015 on 26/10/22.
//

import Combine

public struct Interactor<Request, Response, R: Repository>: UseCase
where R.Request == Request, R.Response == Response {
  
  
  private let _repository: R
  
  public init(repository: R) {
    _repository = repository
  }
  
  public func execute(request: Request?) -> AnyPublisher<Response, Error> {
    _repository.execute(request: request)
  }
  
  public func process(request: Request?) -> AnyPublisher<Response, Error> {
    _repository.process(request: request)
  }
}
