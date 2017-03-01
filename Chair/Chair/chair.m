//
//  chair.m
//  Chairs
//
//  Created by Killian Comerford on 01/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "chair.h"

SKSpriteNode *center;
SKSpriteNode *chair_0;
SKSpriteNode *chair_1;
SKSpriteNode *chair_2;
SKSpriteNode *chair_3;
SKSpriteNode *chair_4;
SKSpriteNode *chair_5;

@implementation chair
+(void)load6Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s{
    int size = 7;
    double radius_ = 150;
    float xoffset = 75;
    float yoffset = 129.9;
    
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
    
    center = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    center.position = CGPointMake(s.frame.size.width/2, s.frame.size.height/2);
    center.size = CGSizeMake(0,0);
    center.anchorPoint = CGPointMake(.5, .5);
    
    chair_0 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_0.position = CGPointMake(0,radius_);
    chair_0.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_0.anchorPoint = CGPointMake(.5, .5);
    chair_0.zRotation = -1.5708;
    
    chair_1 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_1.position = CGPointMake(142.62,46.47);
    chair_1.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_1.anchorPoint = CGPointMake(.5, .5);
    chair_1.zRotation = -0.314159;
    
    chair_2 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_2.position = CGPointMake(-142.62,46.47);
    chair_2.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_2.anchorPoint = CGPointMake(.5, .5);
    chair_2.zRotation = -2.19911;
    
    chair_3 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_3.position = CGPointMake(88.17,-121.35);
    chair_3.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_3.anchorPoint = CGPointMake(.5, .5);
    chair_3.zRotation = 2.82743;
    
    chair_4 = [SKSpriteNode spriteNodeWithImageNamed:@"chair"];
    chair_4.position = CGPointMake(-88.17,-121.35);
    chair_4.size =CGSizeMake(s.frame.size.width/size, s.frame.size.width/size);
    chair_4.anchorPoint = CGPointMake(.5, .5);
    chair_4.zRotation = -0.942478;
    
    [center addChild:chair_0];
    [center addChild:chair_1];
    [center addChild:chair_2];
    [center addChild:chair_3];
    [center addChild:chair_4];
    
    [s addChild:center];
}

+(void)updateRotation{
    SKAction *rotation = [SKAction rotateByAngle:M_PI duration:5];
    SKAction *continuous = [SKAction repeatActionForever:rotation];
    [center runAction:continuous];
}
-(void)on_tap:(id)sender{
    
}
@end
