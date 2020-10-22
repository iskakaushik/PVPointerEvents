//
//  AppDelegate.m
//  PVPointerEvents
//
//  Created by Kaushik Iska on 10/22/20.
//  Copyright © 2020 Kaushik Iska. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic,strong) IBOutlet MainViewController *mainViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
  self.mainViewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
  [self.window.contentView addSubview:self.mainViewController.view];
  self.mainViewController.view.frame = ((NSView*)self.window.contentView).bounds;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}


@end
