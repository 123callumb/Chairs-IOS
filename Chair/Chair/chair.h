//
//  chair.h
//  Chairs
//
//  Created by Killian Comerford on 01/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface chair : SKScene
+(void)load6Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load5Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load4Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load3Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)load2Chairs:(double)radius movementSpeed:(double)speed animationTime:(double)time scene:(SKScene*)s;
+(void)rotateChair:(double)angle duration:(int)i;
+(CGPoint)getChair_0Val;
+(CGPoint)getChair_1Val;
+(CGPoint)getChair_2Val;
+(CGPoint)getChair_3Val;
+(CGPoint)getChair_4Val;
+(CGPoint)getChair_5Val;
@end
