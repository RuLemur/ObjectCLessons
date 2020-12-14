//
//  CoffeeMachine.h
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef int (^CoffeeBlock) (int deposit);

typedef enum CoffeeType {
    AmericanoType,
    DoppioType,
    EspressoType,
    CappuccinoType,
    LatteType,
    MochaType,
    CortadoType
} CoffeeType;

@interface CoffeeMachine : NSObject

+ (int)beginCookCoffee: (CoffeeType)coffee deposit: (int)deposit;

@end

NS_ASSUME_NONNULL_END
