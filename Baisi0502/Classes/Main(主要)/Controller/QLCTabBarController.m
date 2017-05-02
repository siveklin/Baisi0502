//
//  QLCTabBarController.m
//  Baisi0502
//
//  Created by Qlinchao on 17/5/2.
//  Copyright © 2017年 JAYA. All rights reserved.
//

#import "QLCTabBarController.h"

#import "QLCEssenceController.h"
#import "QLCFriendTrendController.h"
#import "QLCPublishController.h"
#import "QLCNewController.h"
#import "QLCMineController.h"

#import "UIImage+Image.h"

@interface QLCTabBarController ()

@end

@implementation QLCTabBarController

+(void)load{
    
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *colorDict = [[NSMutableDictionary alloc] init];
    colorDict[NSForegroundColorAttributeName] = [UIColor blackColor];
    [item setTitleTextAttributes:colorDict forState:UIControlStateSelected];
    
    NSMutableDictionary *fontDict = [[NSMutableDictionary alloc] init];
    fontDict[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:fontDict forState:UIControlStateNormal];
    
}

//
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addAllNavigationControllers];
    
    [self setAllTabBarItems];
    
    
}

//添加导航控制器到TabBar上

- (void)addAllNavigationControllers{
    QLCEssenceController *essenC = [[QLCEssenceController alloc] init];
    UINavigationController *essenceNAV = [[UINavigationController alloc] initWithRootViewController:essenC];
    
    QLCFriendTrendController *friendC = [[QLCFriendTrendController alloc] init];
    UINavigationController *friendNAV = [[UINavigationController alloc] initWithRootViewController:friendC];
    
    QLCPublishController *publishC = [[QLCPublishController alloc] init];
    
    
    QLCNewController *newC = [[QLCNewController alloc] init];
    UINavigationController *newNAV = [[UINavigationController alloc] initWithRootViewController:newC];
    
    QLCMineController *mineC = [[QLCMineController alloc] init];
    UINavigationController *mineNAV = [[UINavigationController alloc] initWithRootViewController:mineC];
    
    [self setViewControllers:@[essenceNAV,friendNAV,publishC,newNAV,mineNAV]];
}


//给TabBar上按钮设置内容
- (void)setAllTabBarItems{
    UINavigationController *essenceNAV = self.childViewControllers[0];
    essenceNAV.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    essenceNAV.tabBarItem.selectedImage = [UIImage noRenderWithImageName:@"tabBar_essence_click_icon"];
    essenceNAV.tabBarItem.title = @"精华";
    
    UINavigationController *friendNAV = self.childViewControllers[1];
    friendNAV.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    friendNAV.tabBarItem.selectedImage = [UIImage noRenderWithImageName:@"tabBar_friendTrends_click_icon"];
    friendNAV.tabBarItem.title = @"关注";
    
    UINavigationController *publishC = self.childViewControllers[2];
    publishC.tabBarItem.image = [UIImage imageNamed:@"tabBar_publish_icon"];
    publishC.tabBarItem.selectedImage = [UIImage noRenderWithImageName:@"tabBar_publish_click_icon"];
    
    UINavigationController *newNAV = self.childViewControllers[3];
    newNAV.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    newNAV.tabBarItem.selectedImage = [UIImage noRenderWithImageName:@"tabBar_new_click_icon"];
    newNAV.tabBarItem.title = @"新帖";
    
    UINavigationController *mineNAV = self.childViewControllers[4];
    mineNAV.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    mineNAV.tabBarItem.selectedImage = [UIImage noRenderWithImageName:@"tabBar_me_click_icon"];
    mineNAV.tabBarItem.title = @"我的";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
