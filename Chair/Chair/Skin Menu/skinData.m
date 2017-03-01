//
//  skinData.m
//  Chairs
//
//  Created by Callum Beckwith on 01/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "skinData.h"

@implementation skinData

+(NSArray*)skinList {
    //Yes I know I could have written a loop to add all these in on line but im keeping it an non mutable array incase we have other file names for the skins.
    
    NSArray *skins = [NSArray arrayWithObjects:
                       @"player_1",
                       @"player_2",
                       @"player_3",
                       @"player_4",
                       @"player_5",
                       @"player_6",
                       @"player_7",
                       @"player_8",
                       @"player_9",
                      nil];
    return skins;
}

+(void)addSkinScrollList:(UIView*)v {
    UIScrollView *skinSrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(v.frame.size.width/2 - v.frame.size.width/2.5, v.frame.size.height/4, v.frame.size.width/1.25, v.frame.size.width/1.25)];
    
    [skinSrollView setContentSize:CGSizeMake(skinSrollView.frame.size.width, skinSrollView.frame.size.width/3.5 * ([[self skinList] count]/2))];
    [skinSrollView setShowsVerticalScrollIndicator:NO];
    
    for (int i = 0; i <= ([[self skinList] count] - 1); i++) {
        [self createPlayerSkinButton:skinSrollView skinNumber:i];
    }
    
    [v addSubview:skinSrollView];
}

+(void)createPlayerSkinButton: (UIView*)v skinNumber:(int)skinNo {
    UIImage *skinImage = [UIImage imageNamed:[[self skinList] objectAtIndex:skinNo]];
    UIButton *skinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    float buttonArea = v.frame.size.width/3.5;
    float buttonX = [self determineButtonPosition:skinNo buttonArea:buttonArea].x;
    float buttonY = [self determineButtonPosition:skinNo buttonArea:buttonArea].y;
    
    [skinButton setImage:skinImage forState:UIControlStateNormal];
    [skinButton setFrame:CGRectMake(buttonX, buttonY, buttonArea, buttonArea)];
    
    [v addSubview:skinButton];
    
}
+(CGPoint)determineButtonPosition: (int)buttonNumber buttonArea:(float)bArea{
    
    CGPoint pos = CGPointZero;
    
    for(int i = 0; i <= ([[self skinList] count] - 1); i = i + 3){
        if (i == buttonNumber) {
            pos = CGPointMake(0, (bArea*1.2) * buttonNumber/3);
        }
    }
    
    for(int i = 1; i <= ([[self skinList] count] - 1); i = i + 3){
        if (i == buttonNumber) {
            pos = CGPointMake((((bArea*3.5)/2)-bArea/2), (bArea*1.2) * (buttonNumber - 1)/3);
        }
    }
    for(int i = 2; i <= ([[self skinList] count] - 1); i = i + 3){
        if (i == buttonNumber) {
            pos = CGPointMake((bArea*3.5)-bArea, (bArea*1.2) * (buttonNumber - 2)/3);
        }
    }
    
    return pos;
}
@end
