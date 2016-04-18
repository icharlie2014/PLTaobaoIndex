//
//  PLCollectionViewLayout.m
//  FakeTaoBaoIndex
//
//  Created by panglong on 16/4/17.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import "PLCollectionViewLayout.h"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

@implementation PLCollectionViewLayout


- (void)prepareLayout
{
    [super prepareLayout];
    
    self.itemSize = CGSizeMake(SCREEN_WIDTH/5, (SCREEN_HEIGHT * 0.2)*0.5);
    
    self.minimumLineSpacing = 0;
    
    self.minimumInteritemSpacing = 0;
}


@end
