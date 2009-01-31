//
//  LMSwitchView.m
//  LMSwitch
//
//  Created by Matt Mower on 31/01/2009.
//  Copyright 2009 LucidMac Software. All rights reserved.
//

#import <InterfaceBuilderKit/InterfaceBuilderKit.h>
#import <LMSwitch/LMSwitchView.h>
#import "LMSwitchInspector.h"


@implementation LMSwitchView ( LMSwitchView )

- (void)ibPopulateKeyPaths:(NSMutableDictionary *)keyPaths {
    [super ibPopulateKeyPaths:keyPaths];
	
	// Remove the comments and replace "MyFirstProperty" and "MySecondProperty" 
	// in the following line with a list of your view's KVC-compliant properties.
    [[keyPaths objectForKey:IBAttributeKeyPaths] addObjectsFromArray:[NSArray arrayWithObjects:/* @"MyFirstProperty", @"MySecondProperty",*/ nil]];
}

- (void)ibPopulateAttributeInspectorClasses:(NSMutableArray *)classes {
    [super ibPopulateAttributeInspectorClasses:classes];
    [classes addObject:[LMSwitchInspector class]];
}

@end
