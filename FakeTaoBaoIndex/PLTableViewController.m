//
//  PLTableViewController.m
//  FakeTaoBaoIndex
//
//  Created by panglong on 16/4/16.
//  Copyright © 2016年 庞龙. All rights reserved.
//

#import "PLTableViewController.h"

#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

@interface PLTableViewController ()


@end

@implementation PLTableViewController

#pragma mark - table data 数据代理

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier;

    if (indexPath.section == 2) {
        cellIdentifier=@"cell2";
    }else if (indexPath.section == 3) {
        cellIdentifier=@"cell3";
    }else if (indexPath.section == 4){
        cellIdentifier=@"cell4";
    }else if (indexPath.section == 1) {
        cellIdentifier = @"cell1";
    }else if(indexPath.section == 0) {
        cellIdentifier = @"cell0";
    }
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return nil;
    }
    
    static NSString *cellIdentifier = @"sectionHeadView";
    UITableViewCell *headView =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!headView){
        headView=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    return headView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 2;
    }
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return SCREEN_HEIGHT * 0.2;
    }
    return SCREEN_HEIGHT * 0.35;
}

#pragma mark - UICollection

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    
    
    return cell;
}

@end
