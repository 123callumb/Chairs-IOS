//
//  skinUI.m
//  Chairs
//
//  Created by Callum Beckwith on 01/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "skinUI.h"
#import "main_menu.h"
#import "skinData.h"

@implementation skinUI

+(void)addSkinSelectorUI: (UIView*)v {
    
    if([v viewWithTag:101] == nil){ //Not created
    
        UIView *skinView = [[UIView alloc] initWithFrame:CGRectMake(-v.frame.size.width, 0, v.frame.size.width, v.frame.size.height)];
        [skinView setTag:101];
        
        [self addBackButton:skinView];
        [skinData addSkinScrollList:skinView];
        [self addTitle:skinView];
        
        [v addSubview:skinView];
        [self addSkinSelectorUI:v];
        
    }else { //Created
        [UIView animateWithDuration:0.3 animations:^{
            UIView *skinV = [v viewWithTag:101];
            [skinV setFrame:CGRectMake(0, 0, v.frame.size.width, v.frame.size.height)];
        }];
    }
}

+(void)addBackgroundItems: (UIView*)v {
    UIImage *object_1 = [UIImage imageNamed:@"sceneObject_1"];
    UIImage *object_2 = [UIImage imageNamed:@"sceneObject_2"];
    
    UIImageView *bgObj = [[UIImageView alloc] initWithImage:object_1];
    UIImageView *bgObj1 = [[UIImageView alloc] initWithImage:object_2];
    
    float objW = v.frame.size.width;
    float objH = v.frame.size.height/2;
    float obj1H = v.frame.size.height/4;
    
    [bgObj setFrame:CGRectMake(0, v.frame.size.height-objH, objW, objH)];
    [bgObj1 setFrame:CGRectMake(0, 0, objW, obj1H)];
    
    [v addSubview:bgObj];
    [v addSubview:bgObj1];
}

+(void)addBackButton: (UIView*)v {
    UIImage *backButtonImage = [UIImage imageNamed:@"backButtonRight"];
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [backButton setImage:backButtonImage forState:UIControlStateNormal];
    [backButton setFrame:CGRectMake(v.frame.size.width - v.frame.size.width/5 - v.frame.size.width/30,v.frame.size.height - v.frame.size.height/12 - v.frame.size.width/30, v.frame.size.width/5, v.frame.size.height/12)];
    [backButton addTarget:self action:@selector(onBackButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [v addSubview:backButton];
    
}
+(void)addTitle:(UIView*)v {
    UIImage *skinTitleImage = [UIImage imageNamed:@"skinTitle"];
    UIImageView *skinTitle = [[UIImageView alloc] initWithImage:skinTitleImage];
    
    [skinTitle setFrame:CGRectMake(v.frame.size.width/2 - v.frame.size.width/6, v.frame.size.height/10, v.frame.size.width/3, v.frame.size.height/10)];
    
    [v addSubview:skinTitle];
}
+(void)onBackButton: (id)sender {
    UIButton *back = (UIButton*)sender;
    UIView *v = [back superview];
    UIView *mainView = [v superview];
    
    UIView *menu = [mainView viewWithTag:100];
    
    [UIView animateWithDuration:0.3 animations:^{
        [menu setFrame:CGRectMake(0, 0, mainView.frame.size.width, mainView.frame.size.height)];
        [v setFrame:CGRectMake(-mainView.frame.size.width, 0, v.frame.size.width, v.frame.size.height)];
    }];
}
@end
