//
//  Student.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 04.12.2020.
//

#import "Student.h"

@implementation Student
//@synthesize name = objectName;

- (instancetype)initStudent:(NSString *)name surname:(NSString *)surname {
    self = [super init];
    if (self) {
        self.name = name;
        self.surname = surname;
    }
    return self;
}

- (void)calculate:(NSNumber *)first second:(NSNumber *)second{
    return;
}

@end
