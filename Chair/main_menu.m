//
//  main_menu.m
//  Chairs
//
//  Created by Killian Comerford on 27/02/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "main_menu.h"

@implementation main_menu
-(void)didMoveToView:(SKView *)view {
    UIView *menu_view = [[UIView alloc] initWithFrame:view.frame];
    menu_view.tag = 100;
    [menu_view setBackgroundColor:[UIColor blueColor]];
    
    //background texture
    UIImageView *background = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)];
    menu_view.layer.anchorPoint = CGPointMake(.5, .5);
    [background setImage:[UIImage imageNamed:@"background_menu"]];
    
    //play button
    SEL aSel_play = @selector(play_button_action:);
    UIButton *play_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [play_button addTarget:self action:aSel_play forControlEvents:UIControlEventTouchUpInside];
    play_button.frame = CGRectMake((menu_view.frame.size.width/2)-((2*(menu_view.frame.size.width/3))/2),menu_view.frame.size.height/2-3.5*(169*(((2*(menu_view.frame.size.width/3))/1043))/2),2*(menu_view.frame.size.width/3),169*((2*(menu_view.frame.size.width/3))/1043));
    [play_button setImage:[UIImage imageNamed:@"button_play"]forState:UIControlStateNormal];
    //leaderboards button
    SEL aSel_leaderboards = @selector(leaderboards_button_action:);
    UIButton *leaderboards_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [leaderboards_button addTarget:self action:aSel_leaderboards forControlEvents:UIControlEventTouchUpInside];
    leaderboards_button.frame = CGRectMake((menu_view.frame.size.width/2)-((2*(menu_view.frame.size.width/3))/2),menu_view.frame.size.height/2-(169*(((2*(menu_view.frame.size.width/3))/1043))/2),2*(menu_view.frame.size.width/3),169*((2*(menu_view.frame.size.width/3))/1043));
    [leaderboards_button setImage:[UIImage imageNamed:@"button_leaderboards"]forState:UIControlStateNormal];

    //settings button
    SEL aSel_settings = @selector(settings_button_action:);
    UIButton *settings_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [settings_button addTarget:self action:aSel_settings forControlEvents:UIControlEventTouchUpInside];
    settings_button.frame = CGRectMake((menu_view.frame.size.width/2)-((2*(menu_view.frame.size.width/3))/2),menu_view.frame.size.height/2+1.5*(169*(((2*(menu_view.frame.size.width/3))/1043))/2),2*(menu_view.frame.size.width/3),169*((2*(menu_view.frame.size.width/3))/1043));
    [settings_button setImage:[UIImage imageNamed:@"button_settings"]forState:UIControlStateNormal];
    
    [view addSubview:menu_view];
    [menu_view addSubview:background];
    [menu_view addSubview:play_button];
    [menu_view addSubview:leaderboards_button];
    [menu_view addSubview:settings_button];
}

-(void)update:(CFTimeInterval)currentTime {
}
+(void)play_button_action:(id)sender{
}
+(void)leaderboards_button_action:(id)sender{
    
}
+(void)settings_button_action:(id)sender{
    
}
@end

