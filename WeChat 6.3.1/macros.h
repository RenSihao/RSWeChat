//
//  macros.h
//  WeChat 6.3.1
//
//  Created by RenSihao on 15/10/14.
//  Copyright © 2015年 RenSihao. All rights reserved.
//

#ifndef macros_h
#define macros_h


#define APPDELEGATE ((AppDelegate *)[[UIApplication sharedApplication] delegate])




#pragma mark -- frame

#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width

#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#define STATUSBAR_HEIGHT 20

#define NAVBAR_HEIGHT    44

#define TABBAR_HEIGHT    49


#pragma mark -- color

#define DEFAULT_BACKGROUND_COLOR [UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:246.0/255.0 alpha:1.0]

#define DEFAULT_NAVBAR_COLOR [UIColor colorWithRed:20.0/255.0 green:20.0/255.0 blue:20.0/255.0 alpha:0.9]

#define DEFAULT_SEARCHBAR_COLOR [UIColor colorWithRed:239.0/255.0 green:239.0/255.0 blue:244.0/255.0 alpha:1.0]
#define DEFAULT_GREEN_COLOR [UIColor colorWithRed:2.0/255.0 green:187.0/255.0 blue:0.0 alpha:1.0]

#define DEFAULT_LINE_GRAY_COLOR [UIColor colorWithRed:188.0/255.0 green:188.0/255.0 blue:188.0/255.0 alpha:0.65]
#define DEFAULT_TEXT_GRAY_COLOR [UIColor grayColor]












#endif /* macros_h */
