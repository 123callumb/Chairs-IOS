//
//  main_game.m
//  Chairs
//
//  Created by Killian Comerford on 28/02/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "main_game.h"
#import "chair.h"
#import "player.h"
#import "enemy.h"
#import "state_rotate.h"

double angle;
int duration;

@implementation main_game
-(void)didMoveToView:(SKView *)view {
    
    angle = 9;
    duration = 7;
    
    [self setBackgroundColor:[SKColor whiteColor]];
    [chair load4Chairs:0 movementSpeed:0 animationTime:0 scene:self];
    [state_rotate state_rotate:self angle:angle duration:duration];
}

+(void)state_stop:(SKScene*)s{
    
}
-(void)update:(CFTimeInterval)currentTime {
    
}
@end
