//
//  lessonOne.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 23.11.2020.
//

#import <Foundation/Foundation.h>

void taskOneTwo() {
    // Задание 1,2
    int first = 0;
    int second = 0;
    char operator;
    printf("Operator (+,-,*,/): ");
    scanf("%c", &operator);
    printf("First number: ");
    scanf("%d", &first);
    printf("Second number: ");
    scanf("%d", &second);
    
    
    if (operator == '+') {
        NSLog(@"%d + %d = %d",first, second, first + second);
    } else if (operator == '-') {
        NSLog(@"%d - %d = %d",first, second, first - second);
    }else if (operator == '*') {
        NSLog(@"%d - %d = %d",first, second, first * second);
    }else if (operator == '/') {
        NSLog(@"%d - %d = %f",first, second, (Float64)first / (Float64)second);
    } else{
        NSLog(@"vrong operator");
    }
    
    return;
}

void taskThree() {
    // Задание 3
    int first1 = 0;
    int second1 = 0;
    int three1 = 0;
    printf("First number: ");
    scanf("%d", &first1);
    printf("Second number: ");
    scanf("%d", &second1);
    printf("Third number: ");
    scanf("%d", &three1);
    
    
    NSLog(@"Average: %f", (Float64)(first1 + second1 +three1)/3 );
    return;
}
