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
//#import "Student.h"
//#import "DancingStudent.h"
//#import "MathStudent.h"
#import "Calculator.h"
#import "FlockOfBirds.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Урок 5
        
        //задание 1
        NSLog(@"----------------------TASK-1-------------------------");
        Calculator *calculator = [[Calculator alloc] init];
        NSString *operator = @"/";
        NSNumber *varA = @1;
        NSNumber *varB = @5;
        [calculator calculate:operator varA:varA varB:varB];
        [calculator release];
        
        //задание 2
        NSLog(@"----------------------TASK-2-------------------------");
        FlockOfBirds *flock = [[FlockOfBirds alloc] init];
        
        NSString *flockName = @"CarCars";
        
        Bird *crow = [[Bird alloc] initWithName:@"Crow"];
        Bird *magpie = [[Bird alloc] initWithName:@"Magpie"];
        Bird *eagle = [[Bird alloc] initWithName:@"Eagle"];
        Bird *parrot = [[Bird alloc] initWithName:@"parrot"];
        
        NSArray *birds = [[NSArray alloc] initWithObjects:crow, magpie,eagle,parrot, nil];
        
        [flock flyAway:flockName birds:birds];
        [flock release];
        
        /*
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
        
        // Урок 1
        /* // задание 1,2
        taskOneTwo();
        // задание 3
        taskThree();
        */
    }
    return 0;
}
