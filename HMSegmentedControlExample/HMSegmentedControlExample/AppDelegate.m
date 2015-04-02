//
//  AppDelegate.m
//  HMSegmentedControlExample
//
//  Created by Hesham Abd-Elmegid on 25/12/12.
//  Copyright (c) 2012 Hesham Abd-Elmegid. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "MoreExampleViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[ViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    UIBarButtonItem *moreBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"More" style:UIBarButtonItemStylePlain target:self action:@selector(doMore:)];
    self.viewController.navigationItem.rightBarButtonItem = moreBarButtonItem;
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)doMore:(id)sender
{
    MoreExampleViewController *more = [[MoreExampleViewController alloc] init];
    [((UINavigationController *)self.window.rootViewController) pushViewController:more animated:YES];
}

@end
