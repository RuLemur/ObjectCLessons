//
//  Crow.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import "Bird.h"

@implementation Bird
-(instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Create bird name set %@", _name);
    }
    return self;
}

-(void)dealloc {
    NSLog(@"Bird %@ was killed", _name);
    [_name release];
    [super dealloc];
}
@end
