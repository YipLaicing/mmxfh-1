//
//  Train.m
//
//  Created by : Mac
//  Project    : MMXTH
//  Date       : 16/9/17
//
//  Copyright (c) 2016年 xc.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "Train.h"

// -----------------------------------------------------------------

@implementation Train

// -----------------------------------------------------------------

+ (instancetype)node
{
    return [[self alloc] init];
}

- (instancetype)init
{
    self = [super init];
    NSAssert(self, @"Unable to create class %@", [self class]);
    // class initalization goes here
    
    
    
    
    return self;
}
-(NSString*)getUrl
{
    return url;
}
-(void) setUrl:(NSString*) URL

{
    url=URL;
}
// -----------------------------------------------------------------

@end





