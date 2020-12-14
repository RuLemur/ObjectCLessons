//
//  StrangeFlockOfBirds.h
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlockOfBirds : NSObject
- (void) flyAway:(NSString *)flockName birds:(NSArray *)birds;

@property (nonatomic, strong) NSString *flockName;
@property (nonatomic, strong) NSArray *birds;

@end

NS_ASSUME_NONNULL_END
