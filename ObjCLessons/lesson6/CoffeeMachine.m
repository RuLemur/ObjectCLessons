//
//  CoffeeMachine.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import "CoffeeMachine.h"

@implementation CoffeeMachine

//name, cost, cookingTime, deposit
int (^cooker)(NSString*, int, int, int) = ^(NSString *name, int cost, int cookingTime, int deposit){
    [NSThread sleepForTimeInterval:cookingTime];
    NSLog(@"%@ with cost: %d, was created in %d seconds. Your charde: %d",name, cost, cookingTime, deposit - cost);
    return deposit - cost;
};

CoffeeBlock americano = ^(int deposit) {
    return cooker(@"Americano", 5, 1, deposit);
};
CoffeeBlock doppio = ^(int deposit) {
    return cooker(@"Doppio", 8, 2, deposit);
};
CoffeeBlock cappuccino = ^(int deposit) {
    return cooker(@"Cappuccino", 10, 3, deposit);
};
CoffeeBlock latte = ^(int deposit) {
    return cooker(@"Cappuccino", 9, 4, deposit);
};
CoffeeBlock mocha = ^(int deposit) {
    return cooker(@"Mocha", 10, 5, deposit);
};
CoffeeBlock cortado = ^(int deposit) {
    return cooker(@"Cortado", 15, 7, deposit);
};

+ (int) beginCookCoffee:(CoffeeType)coffee deposit:(int)deposit {
    switch (coffee) {
        case AmericanoType:
            return americano(deposit);
            break;
        case DoppioType:
            return doppio(deposit);
            break;
        case CappuccinoType:
            return cappuccino(deposit);
            break;
        case LatteType:
            return latte(deposit);
            break;
        case MochaType:
            return mocha(deposit);
            break;
        case CortadoType:
            return cortado(deposit);
            break;
        default:
            return deposit;
    }
}

@end
