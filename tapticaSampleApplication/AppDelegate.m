//
//  AppDelegate.m
//  tapticaSampleApplication
//
//  Created by Noa and Asaf on 12/26/12.
//  Copyright (c) 2012 BroadXaster. All rights reserved.
//

#import "AppDelegate.h"


//for getting the Taptice ad ID please look documention 2.1 Registering with TapticaAd section
#define TAPTICA_AD_APPLICATION_ID @"d1b1de27-50f5-40a6-ace3-e35dcf2b65ad"


@implementation AppDelegate
@synthesize tapticaAdManager;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
    tapticaAdManager = [TapticaAdManager instance];
    [tapticaAdManager setTapticaAdApplicationID:TAPTICA_AD_APPLICATION_ID];
    
    
    // Override point for customization after application launch.
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
