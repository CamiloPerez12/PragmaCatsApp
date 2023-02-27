//
//  HomeViewModel.swift
//  PragmaCatsApp
//
//  Created by jonathan.perez on 26/02/23.
//
import Foundation

class HomeViewModel {
    
    var repository = RepositoryData()
    var catList : CatsModel?
    
    
    init() {}
    
    func getCats(completionHandler: @escaping([CatsModel]?) -> Void) {
        let urlService = ""
        repository.apiRest.request(urlService: urlService, completionHandler: completionHandler)
    }
    
}
