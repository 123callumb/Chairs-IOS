//
//  coinData.m
//  Chairs
//
//  Created by Callum Beckwith on 01/03/2017.
//  Copyright © 2017 kilcal. All rights reserved.
//

#import "coinData.h"

@implementation coinData

+(int)getCoins {
    NSUserDefaults *nd = [NSUserDefaults standardUserDefaults];
    return (int)[nd integerForKey:@"coinValue"];
}
+(void)setCoins: (int)value {
    NSUserDefaults *nd = [NSUserDefaults standardUserDefaults];
    [nd setInteger:value forKey:@"coinValue"];
}
+(void)createCoinLabel: (UIView*)v position:(CGPoint)pos coinArea:(float)area {
    UIImage *coinImage = [UIImage imageNamed:@"coin"];
    UIImageView *coin = [[UIImageView alloc] initWithImage:coinImage];
    
    float coinX = pos.x;
    float coinY = pos.y;
    
    [coin setFrame:CGRectMake(coinX, coinY, area, area)];
    
    UILabel *coinValue = [[UILabel alloc] initWithFrame:CGRectMake(coin.frame.origin.x + area*1.2, coin.frame.origin.y, area*4, area)];
    
    [coinValue setFont:[UIFont fontWithName:@"Futura-Medium" size:15]];
    [coinValue setText:[NSString stringWithFormat:@"%d", [self getCoins]]];
    
    [v addSubview:coin];
    [v addSubview:coinValue];
}
@end
