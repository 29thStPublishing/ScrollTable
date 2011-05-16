//
//  ScrollTableAppDelegate.h
//  ScrollTable
//
//  Created by nataliepo on 5/16/11.
//  Copyright 2011 Auburn & Ivory. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScrollTableViewController;

@interface ScrollTableAppDelegate : NSObject <UIApplicationDelegate> {
    UINavigationController *  navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UINavigationController * navigationController;
@property (nonatomic, retain) IBOutlet ScrollTableViewController *viewController;

@end
