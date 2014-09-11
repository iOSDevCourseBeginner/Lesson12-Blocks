//
//  NBPatient.m
//  Lesson12>Blocks
//
//  Created by Nick Bibikov on 8/30/14.
//  Copyright (c) 2014 NickBibikov. All rights reserved.
//

#import "NBPatient.h"

@implementation NBPatient

#pragma mark - Initialization

//-------------------------------------------------------------------------------

- (id)init
{
    self = [super init];
    if (self) {
        [self performSelector:@selector(howAreYou) withObject:nil afterDelay: arc4random()%10+5];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Patient %@ die",self.name);
}

//-------------------------------------------------------------------------------

#pragma mark - Functions

- (void) howAreYou {
  self.doctor(self);
}

- (void) patientFeelsBad:(void(^)(NBPatient*)) feelsBadBlock {
    feelsBadBlock(self);
}

- (void) takePill {
    NSLog(@"Patient %@ take pill", self.name);
}

- (void) makeShot {
    NSLog(@"For patient %@ make a shot", self.name);
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@ temperaturure %.1f",self.name, self.temperature];
}

@end
