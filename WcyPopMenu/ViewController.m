//
//  ViewController.m
//  WcyPopMenu
//
//  Created by 王承雨 on 2017/10/24.
//  Copyright © 2017年 wangchengyu. All rights reserved.
//

#import "ViewController.h"
#import "WcyPopMenuView.h"

NSString * const kPopMenuItemAttributeTitle2         = @"PopMenuItemAttributeTitle";
NSString * const kPopMenuItemAttributeIconImageName2 = @"PopMenuItemAttributeIconImageName";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(50, 150, 100, 40);
    
    [btn setTitle:@"文本" forState:UIControlStateNormal];
    
    btn.backgroundColor = [UIColor redColor];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

-(void)btnClick
{
    NSArray *array = @[@{kPopMenuItemAttributeTitle2 : @"发布销售信息",                                                   kPopMenuItemAttributeIconImageName2 : @"sell"},
                       @{kPopMenuItemAttributeTitle2 : @"发布采购信息", kPopMenuItemAttributeIconImageName2 : @"sell"},@{kPopMenuItemAttributeTitle2 : @"发布采购信息", kPopMenuItemAttributeIconImageName2 : @"sell"},@{kPopMenuItemAttributeTitle2 : @"发布采购信息", kPopMenuItemAttributeIconImageName2 : @"sell"},@{kPopMenuItemAttributeTitle2 : @"发布采购信息", kPopMenuItemAttributeIconImageName2 : @"sell"}];
    
    WcyPopMenuView *menu = [[WcyPopMenuView alloc]initWithItems:array];
    
    [menu setTipsLblByTipsStr:@"在置粮网上发布您想购买或者销售的农产品信息"];
    
    [menu setExitViewImage:@"center_exit"];
    
    [menu setSelectCompletionBlock:^(NSInteger index) {
        
        NSLog(@"%d",index);
        
    }];
}

@end

