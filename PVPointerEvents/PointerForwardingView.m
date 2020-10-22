//
//  PointerForwardingView.m
//  PVPointerEvents
//
//  Created by Kaushik Iska on 10/22/20.
//  Copyright © 2020 Kaushik Iska. All rights reserved.
//

#import "PointerForwardingView.h"

@implementation PointerForwardingView

- (void)drawRect:(NSRect)dirtyRect {
  [super drawRect:dirtyRect];
  [self setWantsLayer:YES];
  [self.layer setBackgroundColor:[NSColor greenColor].CGColor];
}

- (void)mouseDown:(NSEvent *)theEvent {
  [self.layer setBackgroundColor:[NSColor purpleColor].CGColor];
}

- (void)mouseUp:(NSEvent *)theEvent {
  [self.layer setBackgroundColor:[NSColor greenColor].CGColor];
}

@end
