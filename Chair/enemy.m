//
//  enemy.m
//  Chairs
//
//  Created by Killian Comerford on 02/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "enemy.h"

SKSpriteNode *center_ = nil;

SKSpriteNode *enemy_0 = nil;
SKSpriteNode *enemy_1 = nil;
SKSpriteNode *enemy_2 = nil;
SKSpriteNode *enemy_3 = nil;
SKSpriteNode *enemy_4 = nil;
SKSpriteNode *enemy_5 = nil;

@implementation enemy
+(void)load6Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 8;
    
    center_ = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    center_.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center_.size = CGSizeMake(0,0);
    center_.anchorPoint = CGPointMake(.5, .5);
    
    enemy_0 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_0.position = CGPointMake(130.14,-270.3);
    enemy_0.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_0.anchorPoint = CGPointMake(.5, .5);
    
    enemy_1 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_1.position = CGPointMake(234.55,187.04);
    enemy_1.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_1.anchorPoint = CGPointMake(.5, .5);
    
    enemy_2 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_2.position = CGPointMake(-234.55,187.04);
    enemy_2.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_2.anchorPoint = CGPointMake(.5, .5);
    
    enemy_3 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_3.position = CGPointMake(292.48, -66.77);
    enemy_3.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_3.anchorPoint = CGPointMake(.5, .5);
    
    enemy_4 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_4.position = CGPointMake(-292.48, -66.77);
    enemy_4.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_4.anchorPoint = CGPointMake(.5, .5);
    
    enemy_5 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_5.position = CGPointMake(-130.14,-270.3);
    enemy_5.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_5.anchorPoint = CGPointMake(.5, .5);
    
    [center_ addChild:enemy_0];
    [center_ addChild:enemy_1];
    [center_ addChild:enemy_2];
    [center_ addChild:enemy_3];
    [center_ addChild:enemy_4];
    [center_ addChild:enemy_5];
    
    [s addChild:center_];
}
+(void)load5Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 8;
    
    center_ = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    center_.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center_.size = CGSizeMake(0,0);
    center_.anchorPoint = CGPointMake(.5, .5);
    
    enemy_0 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_0.position = CGPointMake(259.81,150);
    enemy_0.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_0.anchorPoint = CGPointMake(.5, .5);
    
    enemy_1 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_1.position = CGPointMake(-259.81,150);
    enemy_1.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_1.anchorPoint = CGPointMake(.5, .5);
    
    enemy_2 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_2.position = CGPointMake(0,-300);
    enemy_2.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_2.anchorPoint = CGPointMake(.5, .5);
    
    enemy_3 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_3.position = CGPointMake(259.81,-150);
    enemy_3.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_3.anchorPoint = CGPointMake(.5, .5);
    
    enemy_4 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_4.position = CGPointMake(-259.81,-150);
    enemy_4.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_4.anchorPoint = CGPointMake(.5, .5);
    
    [center_ addChild:enemy_0];
    [center_ addChild:enemy_1];
    [center_ addChild:enemy_2];
    [center_ addChild:enemy_3];
    [center_ addChild:enemy_4];
    
    [s addChild:center_];
}
+(void)load4Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 8;
    
    center_ = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    center_.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center_.size = CGSizeMake(0,0);
    center_.anchorPoint = CGPointMake(.5, .5);
    
    enemy_0 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_0.position = CGPointMake(285.32,92.71);
    enemy_0.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_0.anchorPoint = CGPointMake(.5, .5);
    
    enemy_1 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_1.position = CGPointMake(-285.32,92.71);
    enemy_1.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_1.anchorPoint = CGPointMake(.5, .5);
    
    enemy_2 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_2.position = CGPointMake(176.34,-242.71);
    enemy_2.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_2.anchorPoint = CGPointMake(.5, .5);
    
    enemy_3 = [SKSpriteNode spriteNodeWithImageNamed:@"temp_enemy"];
    enemy_3.position = CGPointMake(-176.34,-242.71);
    enemy_3.size = CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    enemy_3.anchorPoint = CGPointMake(.5, .5);
    
    [center_ addChild:enemy_0];
    [center_ addChild:enemy_1];
    [center_ addChild:enemy_2];
    [center_ addChild:enemy_3];
    
    [s addChild:center_];
}

+(void)rotateEnemy:(double)angle duration:(int)i{
    SKAction *r1 = [SKAction rotateByAngle:-angle duration:i];
    [center_ runAction:r1];
}


@end
