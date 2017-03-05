//
//  player.h
//  Chairs
//
//  Created by Killian Comerford on 02/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface player : SKScene
+(void)loadPlayer:(int)radius scene:(SKScene*)s;
+(void)rotatePlayer:(double)angle duration:(int)i;
@end
