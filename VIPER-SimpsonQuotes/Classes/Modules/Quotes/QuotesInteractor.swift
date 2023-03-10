//
//  QuotesInteractor.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.



import Foundation

class QuotesInteractor: PresenterToInteractorQuotesProtocol {
    
    // MARK: Properties
    weak var presenter: InteractorToPresenterQuotesProtocol?
    var quotes: [Quote]?
    
    func loadQuotes() {
        print("Interactor receives the request from Presenter to load quotes from the server.")
        QuoteService.shared.getQuotes(count: 6, success: { (code, quotes) in
            self.quotes = quotes
            self.presenter?.fetchQuotesSuccess(quotes: quotes)
        }) { (code) in
            self.presenter?.fetchQuotesFailure(errorCode: code)
        }
    }
    
    func retrieveQuote(at index: Int) {
        guard let quotes = self.quotes, quotes.indices.contains(index) else {
            self.presenter?.getQuoteFailure()
            return
        }
        self.presenter?.getQuoteSuccess(self.quotes![index])
    }

}
