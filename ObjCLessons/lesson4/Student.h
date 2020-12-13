//
//  Student.h
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 04.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

- (instancetype)initStudent:(NSString *)name surname:(NSString *)surname;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;

- (void)calculate:(NSNumber *)first second:(NSNumber *)second; //Полиморфизм


@end

NS_ASSUME_NONNULL_END
