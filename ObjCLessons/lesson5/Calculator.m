//
//  Calculator.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import "Calculator.h"

@implementation Calculator
-(instancetype)init
{
    self = [super init];
    if(self){
        NSLog(@"create calculator");
    }
    return self;
}

- (void)calculate:(NSString *)method varA:(NSNumber *)varA varB:(NSNumber *)varB {
    [method retain];
    [method release];
    _method = method;
    NSLog(@"Added operator");
    [varA retain];
    [varA release];
    _varA = varA;
    NSLog(@"Added varA");
    [varB retain];
    [varB release];
    _varB = varB;
    NSLog(@"Added varB");
    NSInteger first = [_varA intValue];
    NSInteger second = [_varB intValue];
    NSString *operator = _method;
    
    if ([operator  isEqual: @"+"]) {
        NSLog(@"%ld + %ld = %ld",first, second, first + second);
    } else if ([operator  isEqual: @"-"]) {
        NSLog(@"%ld - %ld = %ld",first, second, first - second);
    }else if ([operator  isEqual: @"*"]) {
        NSLog(@"%ld * %ld = %ld",first, second, first * second);
    }else if ([operator  isEqual: @"/"]) {
        NSLog(@"%ld / %ld = %ld",first, second, first / second);
    } else{
        NSLog(@"vrong operator");
    }
}

-(void) remove {
    NSLog(@"removing data");
    [_method release];
    [_varA release];
    [_varB release];
}

-(void)dealloc {
    [self remove];
    NSLog(@"Calculator dealloc");
    [super dealloc];
}

@end
