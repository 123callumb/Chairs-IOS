//
//  state_rotate.m
//  Chairs
//
//  Created by Killian Comerford on 03/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "state_rotate.h"
#import "chair.h"
#import "enemy.h"
#import "player.h"

@implementation state_rotate
+(void)state_rotate:(SKScene*)s angle:(double)a duration:(int)i{
    double angle = a;
    int duration = i;
    
    [chair rotateChair:angle duration:duration];
    [enemy rotateEnemy:angle duration:duration];
    [player rotatePlayer:angle duration:duration];
}
@end
