//
//  MainViewController.m
//  PVPointerEvents
//
//  Created by Kaushik Iska on 10/22/20.
//  Copyright © 2020 Kaushik Iska. All rights reserved.
//

#import "MainViewController.h"
#import "PointerConsumingView.h"
#import "PointerForwardingView.h"
#import "RootView.h"

@interface MainViewController ()

@property (nonatomic, strong) RootView *rootView;
@property (nonatomic, strong) PointerConsumingView *pointerConsumingView;
@property (nonatomic, strong) PointerForwardingView *pointerForwardingView;

@end

@implementation MainViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Do view setup here.
  _rootView = [[RootView alloc] initWithFrame:self.view.frame];
  [self.view addSubview:_rootView];
  

  NSRect pvcRect = NSMakeRect(0, 0, 200, 200);
  _pointerConsumingView = [[PointerConsumingView alloc] initWithFrame:pvcRect];
  [_rootView addSubview:_pointerConsumingView];
  
  NSRect pvfRect = NSMakeRect(200, 0, 200, 200);
  _pointerForwardingView = [[PointerForwardingView alloc] initWithFrame:pvfRect];
  [_rootView addSubview:_pointerForwardingView];
}

@end
