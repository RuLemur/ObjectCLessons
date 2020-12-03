//
//  DancingStudent.h
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 04.12.2020.
//

#import <Foundation/Foundation.h>
#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface DancingStudent : Student //Наследование

- (void)dance;
- (void)setDanceStyle:(NSString *)style;

@end

NS_ASSUME_NONNULL_END
