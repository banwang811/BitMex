//
//  BMTabBarController.m
//  BitMex
//
//  Created by banwang on 2019/4/5.
//  Copyright © 2019 guanqun. All rights reserved.
//

#import "BMTabBarController.h"
#import "BMHomeController.h"
#import "BMSetingController.h"
#import "BMNavigationController.h"

@interface BMTabBarController ()

@end

@implementation BMTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    BMNavigationController *homeNav = [[BMNavigationController alloc] initWithRootViewController:[BMHomeController new]];
    BMNavigationController *setNav = [[BMNavigationController alloc] initWithRootViewController:[BMSetingController new]];
    self.viewControllers = @[homeNav,setNav];
    
    for (int i = 0; i < 2; i++) {
        UITabBarItem *item = self.tabBar.items[i];
        if (i == 0) {
            item.title = @"首页";
        }else{
            item.title = @"设置";
        }
    }
}

@end
