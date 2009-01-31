//
//  LMSwitch.m
//  LMSwitch
//
//  Created by Matt Mower on 31/01/2009.
//  Copyright 2009 LucidMac Software. All rights reserved.
//

#import "LMSwitch.h"

@implementation LMSwitch
- (NSArray *)libraryNibNames {
    return [NSArray arrayWithObject:@"LMSwitchLibrary"];
}

- (NSArray *)requiredFrameworks {
    return [NSArray arrayWithObjects:[NSBundle bundleWithIdentifier:@"com.lucidmac.LMSwitch"], nil];
}

@end
