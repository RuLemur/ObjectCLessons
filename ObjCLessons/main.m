//
//  main.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 23.11.2020.
//

#import <Foundation/Foundation.h>
//#import "lessonOne.m"
//#import "lessonTwo.m"
#import "lessonThree.m"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Урок 1
        /* // задание 1,2
        taskOneTwo();
        // задание 3
        taskThree();
        */
        
        // Урок 2
        /*
        // задание 1
        BOOL result = isInAlphabet('A');
        NSLog(result ? @"Yes" : @"No");
        
        // задание 2
        NSLog(@"%d", calculate(@"+", 3, 4));
        NSLog(@"%d", calculate(@"-", 9, 4));
        NSLog(@"%d", calculate(@"*", 3, 4));
        NSLog(@"%d", calculate(@"/", 9, 4));
        NSLog(@"%d", calculate(@"%", 9, 4));
        */
        
        //Урок 3
        // задание 1
        taskOne();
        
        // задание 2
        enum CalculateOperation calculateOperation = Minus;
        NSLog(@"%d", taskTwo(calculateOperation, 3, 4));
        
        // задание 3
        taskThree();
    }
    return 0;
}
