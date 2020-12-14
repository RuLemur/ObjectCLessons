//
//  StrangeFlockOfBirds.m
//  ObjCLessons
//
//  Created by Aleksandr Pavlov on 14.12.2020.
//

#import "FlockOfBirds.h"
#import "Bird.h"

@implementation FlockOfBirds

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create Flock");
    }
    return self;
}

- (void) flyAway:(NSString *)flockName birds:(NSArray *)birds {
    [flockName retain];
    [flockName release];
    _flockName = flockName;
    NSLog(@"Flock of birds was created with name %@", _flockName);
    
    [birds retain];
    [birds release];
    _birds = birds;
    for (Bird *bird in birds){
        NSLog(@"In flack %@ was added bird %@", _flockName, bird.name);
    }
    
}

-(void) killAllBirds {
    NSLog(@"Hunters here...");
    for (Bird *bird in _birds){
        [bird release];
    }
    [_birds release];
    [_flockName release];
}

-(void)dealloc {
    [self killAllBirds];
    NSLog(@"The birds are dead");
    [super dealloc];
}
@end
