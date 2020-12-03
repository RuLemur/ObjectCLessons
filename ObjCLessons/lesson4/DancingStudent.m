//
//  DancingStudent.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 04.12.2020.
//

#import "DancingStudent.h"


@implementation DancingStudent
NSString *danceStyle; //Инкапусляция

-(void) dance {
    NSLog(@"I'm dancing with style %@", danceStyle);
}

-(void) setDanceStyle:(NSString *)style {
    danceStyle = style;
}

- (void)calculate:(NSNumber *)first second:(NSNumber *)second{
    NSLog(@"Hm, i think result is %@",[NSNumber numberWithInt:(int)(rand() % (0 - 100 + 1) + 0)]);
}
@end
