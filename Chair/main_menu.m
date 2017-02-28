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
    UIImageView *background = [[UIImageView alloc]initWithFrame:CGRectMake(0,0, view.frame.size.width, view.frame.size.height)];
    [background setImage:[UIImage imageNamed:@"menu_background"]];
    
    //title Texture
    UIImageView *title = [[UIImageView alloc]initWithFrame:CGRectMake(menu_view.frame.size.width/2-(menu_view.frame.size.width/3),menu_view.frame.size.height/6,menu_view.frame.size.width/1.5,464*((menu_view.frame.size.width/1.5)/1910))];
    [title setImage:[UIImage imageNamed:@"menu_title"]];
    
    //play button
    UIButton *play_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [play_button addTarget:self action:@selector(play_button_action:) forControlEvents:UIControlEventTouchUpInside];
    play_button.frame = CGRectMake((2*(menu_view.frame.size.width/3))-(menu_view.frame.size.width/10),menu_view.frame.size.height/3,menu_view.frame.size.width/5,menu_view.frame.size.width/5);
    [play_button setImage:[UIImage imageNamed:@"menu_button_play"]forState:UIControlStateNormal];
    //leaderboards button
    SEL aSel_leaderboards = @selector(leaderboards_button_action:);
    UIButton *leaderboards_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [leaderboards_button addTarget:self action:aSel_leaderboards forControlEvents:UIControlEventTouchUpInside];
    leaderboards_button.frame = CGRectMake(menu_view.frame.size.width/3-(menu_view.frame.size.width/10),menu_view.frame.size.height/3,menu_view.frame.size.width/5,menu_view.frame.size.width/5);
    [leaderboards_button setImage:[UIImage imageNamed:@"menu_button_stats"]forState:UIControlStateNormal];
    
    [view addSubview:menu_view];
    [menu_view addSubview:background];
    [menu_view addSubview:play_button];
    [menu_view addSubview:leaderboards_button];
    [menu_view addSubview:title];
}

-(void)update:(CFTimeInterval)currentTime {
}
-(void)play_button_action:(id)sender{
}
-(void)leaderboards_button_action:(id)sender{
    
}
-(void)settings_button_action:(id)sender{
    
}
@end

