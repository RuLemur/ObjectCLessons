//
//  lessonThree.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 30.11.2020.
//

#import <Foundation/Foundation.h>

void taskOne(){
    
    char str[255];
    NSLog(@"Введите 0 для завершения");
    NSMutableArray *arr = [NSMutableArray array];
    while (true) {

        scanf("%s", str);
        NSString *out = [NSString stringWithCString:str encoding:1];
        if ([out  isEqual: @"0"]){
            break;
        }
        [arr addObject:out];
    }
    NSLog(@"Values: ");
    for (NSString *arrString in arr) {
        NSLog(@"%@", arrString);
    }
    
}

enum CalculateOperation {
    Plus,
    Minus,
    Multiply,
    Divide,
    Rest
};


int taskTwo(enum CalculateOperation operation, int a, int b) {
    
    switch (operation) {
        case Plus:
            return a + b;
            break;
        case Minus:
            return a - b;
            break;
        case Multiply:
            return a * b;
            break;
        case Divide:
            return a / b;
            break;
        case Rest:
            return a % b;
            break;
        default:
            NSLog(@"Функция не знает переданный метод");
            break;
    }
    return 0;
}

struct User{
    NSString *firstName;
    NSString *secondName;
};


void taskThree() {
    NSMutableArray *users = [NSMutableArray array];
    for (int i=0; i<3; i++) {
        NSLog(@"Enter FirstName and SecondName");
        char fName[255];
        char sName[255];
        scanf("%s", fName);
        scanf("%s", sName);
        struct User user;
        user.firstName = [NSString stringWithCString:fName encoding:1];
        user.secondName = [NSString stringWithCString:fName encoding:1];
        NSValue *value = [NSValue valueWithBytes:&user objCType:@encode(struct User)];
        [users addObject:value];
        
    }
    
    
    for (int i=0; i<3; i++) {
        struct User user;
        NSValue *value = [users objectAtIndex:i];
        [value getValue: &user];
        NSLog(@"@FN %@", user.firstName);
        NSLog(@"SN %@", user.secondName);
    }
    NSLog(@"%@", users);
}
