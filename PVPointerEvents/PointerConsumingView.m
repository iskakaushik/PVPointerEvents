//
//  PointerConsumingView.m
//  PVPointerEvents
//
//  Created by Kaushik Iska on 10/22/20.
//  Copyright © 2020 Kaushik Iska. All rights reserved.
//

#import "PointerConsumingView.h"

@implementation PointerConsumingView

- (void)drawRect:(NSRect)dirtyRect {
  [super drawRect:dirtyRect];
  [self setWantsLayer:YES];
  [self.layer setBackgroundColor:[NSColor blueColor].CGColor];
}

- (void)mouseDown:(NSEvent *)theEvent {
  [self.layer setBackgroundColor:[NSColor systemPinkColor].CGColor];
}

- (void)mouseUp:(NSEvent *)theEvent {
  [self.layer setBackgroundColor:[NSColor blueColor].CGColor];
}

@end
