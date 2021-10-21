//
//  InternalService.h
//  OperationQueueLeak
//
//  Created by Hassan El Desouky on 21/10/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class CoreDataLayer;

@interface InternalService : NSObject

- (instancetype)initWithCoreDataLayer:(CoreDataLayer *)coreDataLayer;

@end

NS_ASSUME_NONNULL_END
