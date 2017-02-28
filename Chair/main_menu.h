//
//  main_menu.h
//  Chairs
//
//  Created by Killian Comerford on 27/02/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface main_menu : SKScene
-(void)didMoveToView:(SKView *)view;
+(void)play_button_action:(id)sender;
+(void)leaderboards_button_action:(id)sender;
+(void)settings_button_action:(id)sender;

@end
