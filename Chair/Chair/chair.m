//
//  chair.m
//  Chairs
//
//  Created by Killian Comerford on 01/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "chair.h"
#import "enemy.h"
#import "player.h"

SKSpriteNode *center;
SKSpriteNode *chair_0;
SKSpriteNode *chair_1;
SKSpriteNode *chair_2;
SKSpriteNode *chair_3;
SKSpriteNode *chair_4;
SKSpriteNode *chair_5;

double *turnSpeed = nil;

@implementation chair
+(void)load6Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 7;
    float xoffset = 75;
    float yoffset = 129.9;
    double radius_ = 150;
    
    turnSpeed = &speed;
    
    center = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    center.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center.size = CGSizeMake(0,0);
    center.anchorPoint = CGPointMake(.5, .5);
    
    chair_0 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_0.position = CGPointMake(radius_,0);
    chair_0.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_0.anchorPoint = CGPointMake(.5, .5);
    
    chair_1 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_1.position = CGPointMake(-radius_,0);
    chair_1.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_1.anchorPoint = CGPointMake(.5, .5);
    
    chair_2 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_2.position = CGPointMake(-xoffset,yoffset);
    chair_2.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_2.anchorPoint = CGPointMake(.5, .5);
    chair_2.zRotation = -1.0472;
    
    chair_3 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_3.position = CGPointMake(-xoffset,-yoffset);
    chair_3.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_3.anchorPoint = CGPointMake(.5, .5);
    chair_3.zRotation = 1.0472;

    chair_4 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_4.position = CGPointMake(xoffset,yoffset);
    chair_4.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_4.anchorPoint = CGPointMake(.5, .5);
    chair_4.zRotation = 1.0472;

    chair_5 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_5.position = CGPointMake(xoffset,-yoffset);
    chair_5.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_5.anchorPoint = CGPointMake(.5, .5);
    chair_5.zRotation = -1.0472;
    
    //loads enemies for this set
    [enemy load6Enemy:0 movementSpeed:0 animationTime:0 scene:s];
    [player loadPlayer:300 scene:s];
    
    [center addChild:chair_0];
    [center addChild:chair_1];
    [center addChild:chair_2];
    [center addChild:chair_3];
    [center addChild:chair_4];
    [center addChild:chair_5];
    
    [s addChild:center];
}
+(void)load5Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 7;
    double radius_ = 150;
    turnSpeed = &speed;
    
    center = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    center.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center.size = CGSizeMake(0,0);
    center.anchorPoint = CGPointMake(.5, .5);
    
    chair_0 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_0.position = CGPointMake(0,radius_);
    chair_0.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_0.anchorPoint = CGPointMake(.5, .5);
    chair_0.zRotation = -4.71239;
    
    chair_1 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_1.position = CGPointMake(142.62,46.47);
    chair_1.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_1.anchorPoint = CGPointMake(.5, .5);
    chair_1.zRotation = -5.96903;
    
    chair_2 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_2.position = CGPointMake(-142.62,46.47);
    chair_2.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_2.anchorPoint = CGPointMake(.5, .5);
    chair_2.zRotation = -3.45575;
    
    chair_3 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_3.position = CGPointMake(88.17,-121.35);
    chair_3.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_3.anchorPoint = CGPointMake(.5, .5);
    chair_3.zRotation = -0.942478;
    
    chair_4 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_4.position = CGPointMake(-88.17,-121.35);
    chair_4.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_4.anchorPoint = CGPointMake(.5, .5);
    chair_4.zRotation = -2.19911;
    
    [enemy load5Enemy:0 movementSpeed:0 animationTime:0 scene:s];
    [player loadPlayer:300 scene:s];
    
    [center addChild:chair_0];
    [center addChild:chair_1];
    [center addChild:chair_2];
    [center addChild:chair_3];
    [center addChild:chair_4];
    
    [s addChild:center];
}
+(void)load4Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 7;
    double radius_ = 100;
    turnSpeed = &speed;
    
    center = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    center.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center.size = CGSizeMake(0,0);
    center.anchorPoint = CGPointMake(.5, .5);
    
    chair_0 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_0.position = CGPointMake(0,radius_);
    chair_0.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_0.anchorPoint = CGPointMake(.5, .5);
    
    chair_1 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_1.position = CGPointMake(radius_,0);
    chair_1.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_1.anchorPoint = CGPointMake(.5, .5);
    
    chair_2 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_2.position = CGPointMake(-radius_,0);
    chair_2.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_2.anchorPoint = CGPointMake(.5, .5);
    
    chair_3 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_3.position = CGPointMake(0,-radius_);
    chair_3.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_3.anchorPoint = CGPointMake(.5, .5);
    
    [enemy load4Enemy:0 movementSpeed:0 animationTime:0 scene:s];
    [player loadPlayer:300 scene:s];
    
    [center addChild:chair_0];
    [center addChild:chair_1];
    [center addChild:chair_2];
    [center addChild:chair_3];
    
    [s addChild:center];
}
+(void)load3Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 7;
    double radius_ = 100;
    turnSpeed = &speed;
    
    center = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    center.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center.size = CGSizeMake(0,0);
    center.anchorPoint = CGPointMake(.5, .5);
    
    chair_0 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_0.position = CGPointMake(radius_,0);
    chair_0.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_0.anchorPoint = CGPointMake(.5, .5);
    
    chair_1 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_1.position = CGPointMake(-50,86.602);
    chair_1.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_1.anchorPoint = CGPointMake(.5, .5);
    chair_1.zRotation = 2.0944;
    
    chair_2 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_2.position = CGPointMake(-50,-86.602);
    chair_2.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_2.anchorPoint = CGPointMake(.5, .5);
    chair_2.zRotation = -2.0944;
    
    [enemy load3Enemy:0 movementSpeed:0 animationTime:0 scene:s];
    [player loadPlayer:300 scene:s];
    
    [center addChild:chair_0];
    [center addChild:chair_1];
    [center addChild:chair_2];
    
    [s addChild:center];
}
+(void)load2Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 7;
    double radius_ = 100;
    turnSpeed = &speed;
    
    center = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    center.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center.size = CGSizeMake(0,0);
    center.anchorPoint = CGPointMake(.5, .5);
    
    chair_0 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_0.position = CGPointMake(0,radius_);
    chair_0.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_0.anchorPoint = CGPointMake(.5, .5);
    
    chair_1 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_1.position = CGPointMake(0,-radius_);
    chair_1.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_1.anchorPoint = CGPointMake(.5, .5);
    
    [enemy load2Enemy:0 movementSpeed:0 animationTime:0 scene:s];
    [player loadPlayer:300 scene:s];
    
    [center addChild:chair_0];
    [center addChild:chair_1];
    
    [s addChild:center];
}

+(void)rotateChair:(double)angle duration:(int)i{
    SKAction *r1 = [SKAction rotateByAngle:angle duration:i];
    [center runAction:r1];
}
+(CGPoint)getChair_0Val{
    CGPoint r = CGPointMake(chair_0.position.x, chair_0.position.y);
    return r;
}
+(CGPoint)getChair_1Val{
    CGPoint r = CGPointMake(chair_1.position.x, chair_1.position.y);
    return r;
}
+(CGPoint)getChair_2Val{
    CGPoint r = CGPointMake(chair_2.position.x, chair_2.position.y);
    return r;
}
+(CGPoint)getChair_3Val{
    CGPoint r = CGPointMake(chair_3.position.x, chair_3.position.y);
    return r;
}
+(CGPoint)getChair_4Val{
    CGPoint r = CGPointMake(chair_4.position.x, chair_4.position.y);
    return r;
}
+(CGPoint)getChair_5Val{
    CGPoint r = CGPointMake(chair_5.position.x, chair_5.position.y);
    return r;
}

-(void)on_tap:(id)sender{
    
}
@end
