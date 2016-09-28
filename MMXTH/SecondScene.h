//
//  SecondScene.h
//
//  Created by : mac
//  Project    : MMXTH
//  Date       : 16/9/14
//
//  Copyright (c) 2016年 xc.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "Train.h"

// -----------------------------------------------------------------

@interface SecondScene : CCScene {
    Train *train;
    Train *newTrain;
}

// -----------------------------------------------------------------
// properties

@property(nonatomic, assign) BOOL isMoved;
@property(nonatomic, assign) CGPoint beganPoint;
@property(nonatomic, assign) CGSize viewSize;

// -----------------------------------------------------------------
// methods

+ (SecondScene *)scene;
- (id)init;
-(void)initScene;
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event;
- (void)touchMoved:(CCTouch *)touch withEvent:(CCTouchEvent *)event;
- (void)touchEnded:(CCTouch *)touch withEvent:(CCTouchEvent *)event;
- (void)touchCancelled:(CCTouch *)touch withEvent:(CCTouchEvent *)event;
// -----------------------------------------------------------------

@end




