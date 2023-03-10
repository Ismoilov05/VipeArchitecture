//
//  QuoteDetailInteractor.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.

import Foundation

class QuoteDetailInteractor: PresenterToInteractorQuoteDetailProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterQuoteDetailProtocol?
    var quote: Quote?
    
    func getImageDataFromURL() {
        print("Interactor receives the request from Presenter to get image data from the server.")
        KingfisherService.shared.loadImageFrom(urlString: quote!.image!, success: { (data) in
            self.presenter?.getImageFromURLSuccess(quote: self.quote!, data: data)
        }) { (error) in
            self.presenter?.getImageFromURLFailure(quote: self.quote!)
        }

    }
    

}
