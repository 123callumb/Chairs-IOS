//
//  enemy.h
//  Chairs
//
//  Created by Killian Comerford on 02/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface enemy : SKScene
+(void)load6Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load5Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load4Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load3Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load2Enemy:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)rotateEnemy:(double)angle duration:(int)i;
@end
