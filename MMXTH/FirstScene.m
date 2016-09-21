//
//  FirstScene.m
//
//  Created by : mac
//  Project    : MMXTH
//  Date       : 16/9/12
//
//  Copyright (c) 2016年 xc.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "FirstScene.h"
#import "SecondScene.h"

// -----------------------------------------------------------------

@implementation FirstScene

// -----------------------------------------------------------------

+ (FirstScene *)scene {
    return [[self alloc] init];
}

- (id)init {
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);
    // class initalization goes here

    CCNodeColor *background = [CCNodeColor nodeWithColor:[CCColor colorWithRed:27.0f/255.0f green:185.0f/255.0f blue:239.0f/255.0f alpha:1.0f]];
    [self addChild:background];
    
    [self initScene];

    return self;
}

-(void)initScene {
    // Background
    // You can change the .png files to change the background
    CCSprite9Slice *background = [CCSprite9Slice spriteWithImageNamed:@"white_square.png"];
    background.anchorPoint = CGPointZero;
    background.contentSize = [CCDirector sharedDirector].viewSize;
    background.color = [CCColor grayColor];
    [self addChild:background];
    
    // As a reason of I couldn't change the color of the words of the button
    CCLabelTTF *title = [CCLabelTTF labelWithString:@"Start" fontName:@"ArialMT" fontSize:20];
    title.color = [CCColor redColor];
    title.positionType = CCPositionTypeNormalized;
    title.position = ccp(0.5f, 0.5f);
    
    CCButton *beginButton = [CCButton buttonWithTitle:@"Start" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"button.png"]];
    [beginButton setTarget:self selector:@selector(onBeginButtonClicked:)];
    beginButton.positionType = CCPositionTypeNormalized;
    beginButton.position = ccp(0.5f, 0.5f);
    
    [self addChild:title z:10];
    [self addChild:beginButton z:9];
}

// -----------------------------------------------------------------

- (void)onBeginButtonClicked:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[SecondScene scene]
                               withTransition:[CCTransition transitionFadeWithColor:[CCColor redColor] duration:0.5f]];
}

@end





