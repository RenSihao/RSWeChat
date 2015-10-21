//
//  MessageViewController.m
//  WeChat 6.3.1
//
//  Created by RenSihao on 15/10/14.
//  Copyright © 2015年 RenSihao. All rights reserved.
//

#import "MessageViewController.h"

#import "SearchViewController.h"

@interface MessageViewController () <UISearchBarDelegate>

@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) SearchViewController *searchVC;

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置导航栏
    self.navigationItem.title = @"消息";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addBtnDidClick)];

    //被推出时隐藏自己的tabbar
    [self setHidesBottomBarWhenPushed:YES];
    
    //初始化子视图
    [self initSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initSubviews
{
    //设置tableviw属性
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.tableView.layer setBackgroundColor:[UIColor whiteColor].CGColor];
    
    //初始化搜索框和搜索跳转控制器
    _searchVC = [[SearchViewController alloc] init];
    _searchController = [[UISearchController alloc] initWithSearchResultsController:_searchVC];
    [_searchController.searchBar setSearchBarStyle:UISearchBarStyleProminent];
    [_searchController.searchBar setPlaceholder:@"搜索"];
    [_searchController.searchBar setTintColor:DEFAULT_GREEN_COLOR];
    
    [self.tableView setTableHeaderView:_searchController.searchBar];
}

#pragma mark - UISearchBarDelegate
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    self.tabBarController.tabBar.hidden = YES;
}
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    self.tabBarController.tabBar.hidden = YES;
}
#pragma mark - 
- (void)addBtnDidClick
{
    
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
