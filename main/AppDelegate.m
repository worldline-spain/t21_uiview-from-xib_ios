//
//  AppDelegate.m
//  BaseProject
//
//  Created by Eloi Guzmán on 24/02/14.
//  Copyright (c) 2014 Tempos21. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Create the window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    //Add here your app start view controller
    UIViewController * vc = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    vc.view.backgroundColor = [UIColor grayColor];
    vc.title = @"Base Pod Lib";
    
    //Create navigation view controller
    self.navController = [[UINavigationController alloc] initWithRootViewController:vc];
    
    //Add the view controller to the window
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    
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

BOOL isRunningTests(void)
{
    NSDictionary* environment = [[NSProcessInfo processInfo] environment];
    NSString* injectBundle = environment[@"XCInjectBundle"];
    NSString* pathExtension = [injectBundle pathExtension];
    
    return ([pathExtension isEqualToString:@"octest"] ||
            [pathExtension isEqualToString:@"xctest"]);
}


@end
