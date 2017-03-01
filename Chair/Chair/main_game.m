//
//  main_game.m
//  Chairs
//
//  Created by Killian Comerford on 28/02/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "main_game.h"
#import "chair.h"

@implementation main_game
-(void)didMoveToView:(SKView *)view {
    [self setBackgroundColor:[SKColor whiteColor]];
    [chair load5Chairs:0 movementSpeed:0 animationTime:0 scene:self];
    [chair updateRotation];
}
-(void)update:(CFTimeInterval)currentTime {
    
}
@end
