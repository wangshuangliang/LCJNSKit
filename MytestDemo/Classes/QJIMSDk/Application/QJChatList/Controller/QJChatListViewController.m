//
//  QJChatListViewController.m
//  QJImSDkDemo
//
//  Created by admin on 2020/1/14.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QJChatListViewController.h"
#import "QJChatListView.h"

@interface QJChatListViewController()

@property (nonatomic,strong) QJChatListView * chatListView;

@end

@implementation QJChatListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setChatListView:[[QJChatListView alloc] initWithFrame:self.view.bounds]];
}

#pragma mark # Getter、Setter
- (void)setChatListView:(QJChatListView *)chatListView
{
    _chatListView = chatListView;
    [self.view addSubview:chatListView];
}

@end
