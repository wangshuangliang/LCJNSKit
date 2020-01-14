//
//  QJChatListView.m
//  QJImSDkDemo
//
//  Created by admin on 2020/1/14.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QJChatListView.h"
#import "QJIMHeader.h"
#import "QJChatListTableViewCell.h"
#import <WSLSFramework/WSLSFramework.h>

@interface QJChatListView()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UITableView * chatListTableView;

@end

@implementation QJChatListView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self componentInit];
        SPerson * p = [[SPerson alloc] init];
        [p goHome];
        
    }
    return self;
}

#pragma mark # 组件初始化
- (void) componentInit
{
    self.chatListTableView = [[UITableView alloc] initWithFrame:self.bounds style:(UITableViewStyleGrouped)];
    self.chatListTableView.delegate = self;
    self.chatListTableView.dataSource = self;
    self.chatListTableView.estimatedRowHeight = 100;
    self.chatListTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.chatListTableView.rowHeight = UITableViewAutomaticDimension;
    [self.chatListTableView registerClass:[QJChatListTableViewCell class] forCellReuseIdentifier:@"ChatListCELL"];
    [self addSubview:self.chatListTableView];
}

#pragma mark # 代理
#pragma mark # TableView 代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QJChatListTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ChatListCELL" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.1;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 0.1)];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
