//
//  QuoteDetailPresenter.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.

import Foundation

class QuoteDetailPresenter: ViewToPresenterQuoteDetailProtocol {

    // MARK: Properties
    weak var view: PresenterToViewQuoteDetailProtocol?
    var interactor: PresenterToInteractorQuoteDetailProtocol?
    var router: PresenterToRouterQuoteDetailProtocol?
    
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        interactor?.getImageDataFromURL()
    }
    
}

extension QuoteDetailPresenter: InteractorToPresenterQuoteDetailProtocol {
    
    func getImageFromURLSuccess(quote: Quote, data: Data?) {
        print("Presenter receives the result from Interactor after it's done its job.")

        view?.onGetImageFromURLSuccess(quote.quote!, character: quote.character!, image: ImageDataService.shared.convertToUIImage(from: data!))
    }
    
    func getImageFromURLFailure(quote: Quote) {
        print("Presenter receives the result from Interactor after it's done its job.")
        view?.onGetImageFromURLFailure(quote.quote!, character: quote.character!)
    }
    
}
