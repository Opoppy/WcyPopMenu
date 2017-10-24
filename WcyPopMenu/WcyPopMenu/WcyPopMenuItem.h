//
//  WcyPopMenuItem.h
//  SimulateWeiBoTableView
//
//  Created by 王承雨 on 2017/10/13.
//  Copyright © 2017年 wangchengyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WcyPopMenuItem : UIButton

@property (nonatomic, copy) NSMutableDictionary *attrDic;

/**
 *  播放选择动画
 */
- (void)playSelectAnimation;

/**
 *  播放取消选择动画
 */
- (void)playCancelAnimation;
@end
