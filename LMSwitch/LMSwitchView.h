//
//  LMSwitchView.h
//  LMSwitch
//
//  Created by Matt Mower on 31/01/2009.
//  Copyright 2009 LucidMac Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef enum tagLMSwitchPositions {
  twoPosition,
  threePosition
} LMSwitchPositions;

@interface LMSwitchView : NSView {
  BOOL  enabled;
  int   positions;
  int   current;
}

@property BOOL              enabled;
@property LMSwitchPositions positions;
@property int               current;

@end