//
//  player.m
//  Chairs
//
//  Created by Killian Comerford on 02/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "player.h"
#import "skinData.h"
SKSpriteNode *cntr = nil;


@implementation player
+(void)loadPlayer:(int)radius scene:(SKScene*)s{
    cntr = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    cntr.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    cntr.anchorPoint = CGPointMake(.5, .5);
    cntr.size = CGSizeMake(0, 0);
    
    NSString *skin = [skinData getCurrentSkin];
    
    SKSpriteNode *player = [SKSpriteNode spriteNodeWithImageNamed:skin];
    player.size = CGSizeMake(s.frame.size.width/8, s.frame.size.width/8);
    player.position = CGPointMake(0, radius);
    
    [cntr addChild:player];
    [s addChild:cntr];
}
+(void)rotatePlayer:(double)angle duration:(int)i{
    SKAction *r1 = [SKAction rotateByAngle:-angle duration:i];
    [cntr runAction:r1];
}
@end
