//
//  LMSwitchView.m
//  LMSwitch
//
//  Created by Matt Mower on 31/01/2009.
//  Copyright 2009 LucidMac Software. All rights reserved.
//

#import "LMSwitchView.h"

@implementation LMSwitchView

#pragma mark Initialization and NSCoding support

+ (void)initialize {
  [self exposeBinding:@"enabled"];
  [self exposeBinding:@"positions"];
  [self exposeBinding:@"current"];
}

- (id)initWithFrame:(NSRect)frame {
  if( ( self = [super initWithFrame:frame] ) ) {
    enabled   = YES;
    positions = twoPosition;
    current   = 0;
  }
  
  return self;
}

- (id)initWithCoder:(NSCoder *)coder {
  if( ( self = [super initWithCoder:coder] ) ) {
    if( [coder containsValueForKey:@"lmswitch.enabled"] ) {
      [self setEnabled:[[coder decodeObjectForKey:@"lmswitch.enabled"] boolValue]];
    } else {
      [self setEnabled:YES];
    }
    
    if( [coder containsValueForKey:@"lmswitch.positions"] ) {
      [self setPositions:[[coder decodeObjectForKey:@"lmswitch.positions"] intValue]];
    } else {
      [self setPositions:2];
    }
    
    if( [coder containsValueForKey:@"lmswitch.current"] ) {
      [self setCurrent:[[coder decodeObjectForKey:@"lmswitch.current"] intValue]];
    } else {
      [self setCurrent:0];
    }
  }
  
  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [super encodeWithCoder:coder];
  
  [coder encodeObject:[NSNumber numberWithBool:[self enabled]] forKey:@"lmswitch.enabled"];
  [coder encodeObject:[NSNumber numberWithInt:[self positions]] forKey:@"lmswitch.positions"];
  [coder encodeObject:[NSNumber numberWithInt:[self current]] forKey:@"lmswitch.current"];
}

#pragma mark Properties

@dynamic enabled;

- (BOOL)enabled {
  return enabled;
}

- (void)setEnabled:(BOOL)isEnabled {
  enabled = isEnabled;
  [self setNeedsDisplay:YES];
}

@dynamic positions;

- (LMSwitchPositions)positions {
  return positions;
}

- (void)setPositions:(LMSwitchPositions)newPositions {
  positions = newPositions;
  [self setNeedsDisplay:YES];
}

@dynamic current;

- (int)current {
  return current;
}

- (void)setCurrent:(int)newCurrent {
  current = newCurrent;
  [self setNeedsDisplay:YES];
}

#pragma mark Drawing code

- (void)drawRect:(NSRect)bounds {
  NSColor *color;
  
  switch( [self positions] ) {
    case twoPosition:
      color = [NSColor blueColor];
      break;
    
    case threePosition:
      color = [NSColor greenColor];
      break;
      
    default:
      color = [NSColor yellowColor];
  }
  
  if( ![self enabled] ) {
    color = [color colorWithAlphaComponent:0.5];
  }
  
  [color set];
  NSRectFill( bounds );
}

@end
