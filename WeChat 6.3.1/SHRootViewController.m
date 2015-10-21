//
//  SHRootViewController.m
//  WeChat 6.3.1
//
//  Created by RenSihao on 15/10/14.
//  Copyright © 2015年 RenSihao. All rights reserved.
//

#import "SHRootViewController.h"
#import "SHNavigationrViewController.h"

#import "MessageViewController.h"
#import "AddressBookViewController.h"
#import "DiscoverViewController.h"
#import "MineViewController.h"

@interface SHRootViewController ()

@end

@implementation SHRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [NSThread sleepForTimeInterval:1.0f];
//    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.tabBar setBackgroundColor:DEFAULT_NAVBAR_COLOR];
    [self.tabBar setTintColor:DEFAULT_GREEN_COLOR];
    
    //初始化子控制器
    [self initChildViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - 

- (void)initChildViewControllers
{
    //
    MessageViewController *messageVC =[[MessageViewController alloc] init];
    [messageVC.tabBarItem setTitle:@"消息"];
    [messageVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_mainframe"]];
    [messageVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_mainframeHL"]];
    SHNavigationrViewController *messageNC = [[SHNavigationrViewController alloc] initWithRootViewController:messageVC];
    
    //
    AddressBookViewController *addressBookVC = [[AddressBookViewController alloc] init];
    [addressBookVC.tabBarItem setTitle:@"通讯录"];
    [addressBookVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_contacts"]];
    [addressBookVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_contactsHL"]];
    SHNavigationrViewController *addressBookNC = [[SHNavigationrViewController alloc] initWithRootViewController:addressBookVC];
    
    //
    DiscoverViewController *discoverVC = [[DiscoverViewController alloc] init];
    [discoverVC.tabBarItem setTitle:@"发现"];
    [discoverVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_discover"]];
    [discoverVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_discoverHL"]];
    SHNavigationrViewController *discoverNC = [[SHNavigationrViewController alloc] initWithRootViewController:discoverVC];
    
    //
    MineViewController *mineVC = [[MineViewController alloc] init];
    [mineVC.tabBarItem setTitle:@"我"];
    [mineVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_me"]];
    [mineVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_meHL"]];
    SHNavigationrViewController *mineNC = [[SHNavigationrViewController alloc] initWithRootViewController:mineVC];
    
    //添加到根管理器的子控制器数组里
    self.viewControllers = @[messageNC, addressBookNC, discoverNC, mineNC];
    
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
