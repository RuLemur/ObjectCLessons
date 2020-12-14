//
//  LessonFour.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//
#import <Foundation/Foundation.h>
#import "CoffeeMachine.h"

void taskOneTwo() {
    NSLog(@"----------------------GCD-SYNC-------------------------");
    __block int deposit = 200;
    
    NSLog(@"You deposit is %d", deposit);

    dispatch_queue_t simple_queue = dispatch_queue_create("ru.lemur.simple", NULL);

    dispatch_sync(simple_queue, ^{
        int ChargeCortado = [CoffeeMachine beginCookCoffee:CortadoType deposit:deposit];
        deposit = ChargeCortado;
    });
    dispatch_sync(simple_queue, ^{
        int chargeMocha = [CoffeeMachine beginCookCoffee:MochaType deposit:deposit];
        deposit = chargeMocha;
    });
    dispatch_sync(simple_queue, ^{
        int chargeLatte = [CoffeeMachine beginCookCoffee:LatteType deposit:deposit];
        deposit = chargeLatte;
    });
    dispatch_sync(simple_queue, ^{
        int chargeCappuccino = [CoffeeMachine beginCookCoffee:CappuccinoType deposit:deposit];
        deposit = chargeCappuccino;
    });
    dispatch_sync(simple_queue, ^{
        int chargeAmericano = [CoffeeMachine beginCookCoffee:AmericanoType deposit:deposit];
        deposit = chargeAmericano;
    });
    dispatch_sync(simple_queue, ^{
        int chargeDoppio = [CoffeeMachine beginCookCoffee:DoppioType deposit:deposit];
        deposit = chargeDoppio;
    });
    
    NSLog(@"----------------------GCD-ASYNC-------------------------");
    NSLog(@"You deposit is %d", deposit);
    dispatch_queue_t main_queue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
    dispatch_group_t coffeeGroup = dispatch_group_create();
    
    dispatch_group_async(coffeeGroup, main_queue, ^{
        int ChargeCortado = [CoffeeMachine beginCookCoffee:CortadoType deposit:deposit];
        deposit = ChargeCortado;
    });
    dispatch_group_async(coffeeGroup, main_queue, ^{
        int chargeMocha = [CoffeeMachine beginCookCoffee:MochaType deposit:deposit];
        deposit = chargeMocha;
    });
    dispatch_group_async(coffeeGroup, main_queue, ^{
        int chargeLatte = [CoffeeMachine beginCookCoffee:LatteType deposit:deposit];
        deposit = chargeLatte;
    });
    dispatch_group_async(coffeeGroup, main_queue, ^{
        int chargeCappuccino = [CoffeeMachine beginCookCoffee:CappuccinoType deposit:deposit];
        deposit = chargeCappuccino;
    });
    dispatch_group_async(coffeeGroup, main_queue, ^{
        int chargeAmericano = [CoffeeMachine beginCookCoffee:AmericanoType deposit:deposit];
        deposit = chargeAmericano;
    });
    dispatch_group_async(coffeeGroup, main_queue, ^{
        int chargeDoppio = [CoffeeMachine beginCookCoffee:DoppioType deposit:deposit];
        deposit = chargeDoppio;
    });
    dispatch_group_wait(coffeeGroup, DISPATCH_TIME_FOREVER);

    NSLog(@"----------------------NSOperations-------------------------");
    NSLog(@"You deposit is %d", deposit);
    NSOperationQueue *someQueue = [[NSOperationQueue alloc] init];
    
    [someQueue addOperationWithBlock:^{
        int chargeDoppio = [CoffeeMachine beginCookCoffee:DoppioType deposit:deposit];
        deposit = chargeDoppio;
    }];
    [someQueue addOperationWithBlock:^{
        int chargeAmericano = [CoffeeMachine beginCookCoffee:AmericanoType deposit:deposit];
        deposit = chargeAmericano;
    }];
    [someQueue addOperationWithBlock:^{
        int chargeLatte = [CoffeeMachine beginCookCoffee:LatteType deposit:deposit];
        deposit = chargeLatte;
    }];
    [someQueue waitUntilAllOperationsAreFinished];
}
