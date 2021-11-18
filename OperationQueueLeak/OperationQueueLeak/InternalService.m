//
//  InternalService.m
//  OperationQueueLeak
//
//  Created by Hassan El Desouky on 21/10/2021.
//

#import "InternalService.h"

@interface InternalService ()

@property (nonatomic, strong) NSOperationQueue *operationQueue;

@end

@implementation InternalService

- (instancetype)init {
    self = [super init];
    if (self) {
        // Doing stuff 🔥
    }
    return self;
}

- (instancetype)initWithCoreDataLayer:(CoreDataLayer *)coreDataLayer {
    self = [self init];
    if (self) {
        _operationQueue = [[NSOperationQueue alloc] init];
    }
    return self;
}

@end
