//
//  Calculator.h
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

- (void) calculate:(NSString *)method varA:(NSNumber *)varA varB:(NSNumber *)varB;

@property (nonatomic, strong) NSString *method;
@property (nonatomic, strong) NSNumber *varA;
@property (nonatomic, strong) NSNumber *varB;

@end

NS_ASSUME_NONNULL_END
