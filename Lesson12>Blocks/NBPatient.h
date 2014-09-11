//
//  NBPatient.h
//  Lesson12>Blocks
//
//  Created by Nick Bibikov on 8/30/14.
//  Copyright (c) 2014 NickBibikov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NBPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (copy, nonatomic) void(^doctor)(NBPatient*);

- (void) howAreYou;
- (void) patientFeelsBad:(void(^)(NBPatient*)) feelsBadBlock;
- (void) takePill;
- (void) makeShot;



@end
