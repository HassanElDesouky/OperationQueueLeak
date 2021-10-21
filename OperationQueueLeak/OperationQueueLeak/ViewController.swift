//
//  ViewController.swift
//  OperationQueueLeak
//
//  Created by Hassan El Desouky on 19/10/2021.
//

import UIKit

fileprivate extension OperationQueue {
    static var serialSuspendedQueue: OperationQueue {
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        queue.isSuspended = true
        return queue
    }
}

class Service: InternalService {
    private let operationQueue: OperationQueue
    
    override init() {
        operationQueue = OperationQueue.serialSuspendedQueue
        super.init()
    }
    
    override init(coreDataLayer: CoreDataLayer) {
        operationQueue = OperationQueue.serialSuspendedQueue
        super.init(coreDataLayer: coreDataLayer)
        coreDataLayer.afterInitializationCoreDataQueue.addOperation {
            self.operationQueue.isSuspended = false
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = Service(coreDataLayer: CoreDataLayer())
    }


}

