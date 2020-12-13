//
//  main.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 23.11.2020.
//

#import <Foundation/Foundation.h>
//#import "lessonOne.m"
//#import "lessonTwo.m"
//#import "lessonThree.m"
#import "Student.h"
#import "DancingStudent.h"
#import "MathStudent.h"

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
        /*
        // задание 1
        taskOne();
        
        // задание 2
        enum CalculateOperation calculateOperation = Minus;
        NSLog(@"%d", taskTwo(calculateOperation, 3, 4));
        
        // задание 3
        taskThree();
         */
        
        //Урок 4
        // задание 1
        Student *stud = [[Student alloc] initStudent:@"Vano" surname:@"Escalibur"];
        Student *stud_2 = [[Student alloc] initStudent:@"Igor" surname:@"Vasechkin"];
        NSLog(@"1: %@ %@", stud.name, stud.surname);
        NSLog(@"2: %@ %@", stud_2.name, stud_2.surname);
        NSLog(@"--------------------------------------------------------");
        
        // задание 2
        DancingStudent *danceStudent = [[DancingStudent alloc] initStudent:@"Vovka" surname:@"Tututu"];
        [danceStudent setDanceStyle:@"Kalinka"]; //Полиморфизм
        NSLog(@"DanceStudent: %@ %@", danceStudent.name, danceStudent.surname);
        [danceStudent dance];
        [danceStudent calculate:@3 second:@20];
        NSLog(@"--------------------------------------------------------");
       
        MathStudent *mathStudent = [[MathStudent alloc] initStudent:@"Samiy" surname:@"Umniy"];
        NSLog(@"MathStudent: %@ %@", mathStudent.name, mathStudent.surname);
        [mathStudent dance];
        [mathStudent calculate:@3 second:@20];
       
        
    }
    return 0;
}
