//
//  TestObject.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import "TestObject.h"

@implementation TestObject
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init: link counter = 1");
    }
    return self;
}

- (void)dealloc{
    NSLog(@"dealloc");
    [super dealloc];
}
@end
