//
//  LMSwitchInspector.m
//  LMSwitch
//
//  Created by Matt Mower on 31/01/2009.
//  Copyright 2009 LucidMac Software. All rights reserved.
//

#import "LMSwitchInspector.h"

@implementation LMSwitchInspector

- (NSString *)viewNibName {
	return @"LMSwitchInspector";
}

- (void)refresh {
	// Synchronize your inspector's content view with the currently selected objects.
	[super refresh];
}

@end
