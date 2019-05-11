//
//  main.m
//  Queue
//
//  Created by Mustafa Ezzat on 5/12/19.
//  Copyright © 2019 Waqood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue: NSObject
@property NSMutableArray *data;
-(BOOL)enqueue:(id)element;
-(BOOL)dequeue;
-(BOOL)isEmpty;
-(id)front;
@end

@implementation Queue
@synthesize data;
- (instancetype)init
{
    self = [super init];
    if (self) {
        data = [[NSMutableArray alloc] init];
    }
    return self;
}
-(BOOL)enqueue:(NSNumber *)element {
    [data addObject:element];
    return true;
}
-(BOOL)dequeue {
    if([self isEmpty]) {
        return false;
    }
    [data removeObjectAtIndex:0];
    return true;
}
- (id)front {
    return [data firstObject];
}
-(BOOL)isEmpty {
    return ![data count];
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Queue *queue = [[Queue alloc] init];
        [queue enqueue:[[NSNumber alloc] initWithInt:10]];
        [queue enqueue:[[NSNumber alloc] initWithInt:-10]];
        [queue dequeue];
        NSNumber *number = [queue front];
        NSLog(@"number %@", number);
        [queue dequeue];
        [queue isEmpty];
    }
    return 0;
}

