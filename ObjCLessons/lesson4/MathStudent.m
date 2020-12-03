//
//  MathStudent.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 04.12.2020.
//

#import "MathStudent.h"

@implementation MathStudent
-(void) dance {
    NSLog(@"LMAO, get away from me. I'm don't dance");
}

- (void)calculate:(NSNumber *)first second:(NSNumber *)second{
    NSLog(@"result: %@", [NSNumber numberWithLong: [first longValue] + [second longValue]]);
}

@end
