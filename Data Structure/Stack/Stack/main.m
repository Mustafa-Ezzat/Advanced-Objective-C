//
//  main.m
//  Stack
//
//  Created by Mustafa Ezzat on 5/12/19.
//  Copyright © 2019 Waqood. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack: NSObject
@property NSMutableArray *data;
-(void)push: (id)element;
-(BOOL)pop;
-(id)top;
-(BOOL)isEmpty;
@end

@implementation Stack
@synthesize data;
- (instancetype)init
{
    self = [super init];
    if (self) {
        data = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)push:(id)element {
    [data addObject:element];
}
-(BOOL)pop {
    if([self isEmpty]) {
        return false;
    }
    [data removeLastObject];
    return true;
}
-(id)top {
    return [data lastObject];
}
- (BOOL)isEmpty {
    return ![data count];
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Stack *stack = [[Stack alloc] init];
        [stack push:[[NSNumber alloc] initWithInt:-128]];
        [stack push:[[NSNumber alloc] initWithInt:127]];
        [stack pop];
        NSNumber *top = [stack top];
        NSLog(@"Top: %@", top);
        [stack pop];
        [stack isEmpty];
    }
    return 0;
}
