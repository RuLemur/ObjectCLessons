//
//  Crow.h
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject
- (instancetype) initWithName:(NSString *)name;

@property (nonatomic, strong) NSString *name;
@end

NS_ASSUME_NONNULL_END
