//
//  NBAppDelegate.h
//  Lesson12>Blocks
//
//  Created by Nick Bibikov on 8/29/14.
//  Copyright (c) 2014 NickBibikov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NBPatient;
@interface NBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSArray* patientList;
@property (copy, nonatomic) void(^doctor)(NBPatient*);

@end
