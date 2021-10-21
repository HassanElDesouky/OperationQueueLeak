//
//  CoreDataLayer.h
//  OperationQueueLeak
//
//  Created by Hassan El Desouky on 21/10/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoreDataLayer : NSObject

@property (atomic, strong) NSOperationQueue *afterInitializationCoreDataQueue;

@end

NS_ASSUME_NONNULL_END
