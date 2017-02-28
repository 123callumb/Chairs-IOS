//
//  GameScene.m
//  Chair
//
//  Created by Callum Beckwith on 27/02/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "GameScene.h"
#import "main_menu.h"
@implementation GameScene{
    main_menu *menu;
}

- (void)didMoveToView:(SKView *)view {
    //Change the scene
    [view setBackgroundColor:[UIColor redColor]];
    SKScene *s2;
    s2 = [[main_menu alloc]initWithSize:self.size];
    s2.scaleMode = SKSceneScaleModeAspectFill;
    s2.scaleMode = SKSceneScaleModeAspectFill;
    [self.view presentScene:s2 transition:[SKTransition crossFadeWithDuration:.3]];
}
-(void)update:(CFTimeInterval)currentTime {
    // Called before each frame is rendered
}

@end
