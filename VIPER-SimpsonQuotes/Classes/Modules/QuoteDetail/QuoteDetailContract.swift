//
//  QuoteDetailContract.swift
//  VIPER-SimpsonQuotes
//
//  Created by MuhammadQodir on 15/12/20.

import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewQuoteDetailProtocol: class {
    
    func onGetImageFromURLSuccess(_ quote: String, character: String, image: UIImage)
    func onGetImageFromURLFailure(_ quote: String, character: String)
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterQuoteDetailProtocol: class {
    
    var view: PresenterToViewQuoteDetailProtocol? { get set }
    var interactor: PresenterToInteractorQuoteDetailProtocol? { get set }
    var router: PresenterToRouterQuoteDetailProtocol? { get set }

    func viewDidLoad()
    
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorQuoteDetailProtocol: class {
    
    var presenter: InteractorToPresenterQuoteDetailProtocol? { get set }
    
    var quote: Quote? { get set }
    
    func getImageDataFromURL()
    
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterQuoteDetailProtocol: class {
    
    func getImageFromURLSuccess(quote: Quote, data: Data?)
    func getImageFromURLFailure(quote: Quote)
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterQuoteDetailProtocol: class {
    
    static func createModule(with quote: Quote) -> UIViewController
}
