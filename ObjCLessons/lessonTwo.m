//
//  lessonTwo.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 26.11.2020.
//

#import <Foundation/Foundation.h>

BOOL isInAlphabet(char c){
    return ((c >= 'a' && c <='z') || (c >= 'A' && c <='Z') );
}

int operationPlus(int a, int b){
    return a + b;
}
int operationMinus(int a, int b){
    return a - b;
}
int operationMultiply(int a, int b){
    return a * b;
}
int operationDivide(int a, int b){
    return a / b;
}
int operationRest(int a, int b){
    return a % b;
}

int calculate(NSString *method, int a, int b) {
    
    if ([method isEqualToString:@"+"]) {
        return operationPlus(a, b);
    }
    else if ([method isEqualToString:@"-"]) {
        return operationMinus(a, b);
    }
    else if ([method isEqualToString:@"*"]) {
        return operationMultiply(a, b);
    }
    else if ([method isEqualToString:@"/"]) {
        return operationDivide(a, b);
    }
    else if ([method isEqualToString:@"%"]) {
        return operationRest(a, b);
    }
    else {
        NSLog(@"Функция не знает переданный метод");
        return 0;
    }
    
    return 0;
}



