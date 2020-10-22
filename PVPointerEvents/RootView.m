//
//  RootView.m
//  PVPointerEvents
//
//  Created by Kaushik Iska on 10/22/20.
//  Copyright © 2020 Kaushik Iska. All rights reserved.
//

#import "RootView.h"
#import "PointerForwardingView.h"

@implementation RootView

- (void)drawRect:(NSRect)dirtyRect {
  [super drawRect:dirtyRect];
  [self setWantsLayer:YES];
  [self.layer setBackgroundColor:[NSColor blackColor].CGColor];
}

- (void)mouseDown:(NSEvent *)theEvent {
  [self.layer setBackgroundColor:[[NSColor whiteColor] CGColor]];
}

- (void)mouseUp:(NSEvent *)theEvent {
  [self.layer setBackgroundColor:[[NSColor blackColor] CGColor]];
}

- (NSView *)hitTest:(NSPoint)aPoint {
  NSView* hitView = [super hitTest:aPoint];
  if ([hitView isKindOfClass:PointerForwardingView.class]) {
    return self;
  }
  return hitView;
}

@end
