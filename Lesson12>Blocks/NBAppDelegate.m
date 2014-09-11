//
//  NBAppDelegate.m
//  Lesson12>Blocks
//
//  Created by Nick Bibikov on 8/29/14.
//  Copyright (c) 2014 NickBibikov. All rights reserved.
//

#import "NBAppDelegate.h"
#import "NBPatient.h"

@implementation NBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    NBPatient* patient1 = [[NBPatient alloc] init];
    patient1.name = @"Alex";
    patient1.temperature = 37.2f;
                           
    NBPatient* patient2 = [[NBPatient alloc] init];
    patient2.name = @"Valery";
    patient2.temperature = 38.5f;
                           
    NBPatient* patient3 = [[NBPatient alloc] init];
    patient3.name = @"Vitaly";
    patient3.temperature = 37.9f;

    NBPatient* patient4 = [[NBPatient alloc] init];
    patient4.name = @"Cherity";
    patient4.temperature = 40.1f;

    NBPatient* patient5 = [[NBPatient alloc] init];
    patient5.name = @"Nick";
    patient5.temperature = 37.9f;

    NBPatient* patient6 = [[NBPatient alloc] init];
    patient6.name = @"Pedro";
    patient6.temperature = 36.6f;
    
    NBPatient* patient7 = [[NBPatient alloc] init];
    patient7.name = @"Alex";
    patient7.temperature = 39.6f;

    NSArray* patientList = @[patient1, patient2, patient3, patient4, patient5, patient6, patient7];
    
    void (^doctorBlock)(NBPatient*) = ^(NBPatient* patient){
        NSLog(@"%@", patient);
        if (patient.temperature > 36.6 && patient.temperature < 39) {
            [patient takePill];
        }
        else if (patient.temperature>=39){
            [patient makeShot];
        }
        else{
            NSLog(@"All be Ok");
        }
    };
        
    for(NBPatient* patient in patientList) {
        patient.doctor = doctorBlock;
//        [patient howAreYou];
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
