//
//  QJChatListTableViewCell.m
//  QJImSDkDemo
//
//  Created by admin on 2020/1/14.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QJChatListTableViewCell.h"
#import "QJIMHeader.h"

@interface QJChatListTableViewCell()

@property(nonatomic,strong) UIView * baseView;
@property(nonatomic,strong) UIImageView * userHeadImageView;
@property(nonatomic,strong) UILabel * userNameLab;
@property(nonatomic,strong) UILabel * dateLab;
@property(nonatomic,strong) UILabel * contentLab;

@end

@implementation QJChatListTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self componentInit];
        [self addingConstraints];
    }
    return self;
}

#pragma mark # 组件初始化
- (void)componentInit
{
    self.baseView = [[UIView alloc] init];
    [self.contentView addSubview:self.baseView];
    
    self.userHeadImageView = [[UIImageView alloc] init];
    self.userHeadImageView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.baseView addSubview:self.userHeadImageView];
    
    self.userNameLab = [[UILabel alloc] init];
    self.userNameLab.text = @"唐山千家";
    [self.userNameLab setContentCompressionResistancePriority:UILayoutPriorityFittingSizeLevel forAxis:UILayoutConstraintAxisHorizontal];
    [self.baseView addSubview:self.userNameLab];
    
    self.dateLab = [[UILabel alloc] init];
    self.dateLab.text = @"14:14";
    self.dateLab.font = [UIFont systemFontOfSize:13.f];
    self.dateLab.textColor = [UIColor lightGrayColor];
    [self.dateLab setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];//不可以被压缩，尽量显示完整
    [self.baseView addSubview:self.dateLab];
    
    self.contentLab = [[UILabel alloc] init];
    self.contentLab.text = @"[房源]千家";
    self.contentLab.font = [UIFont systemFontOfSize:16.f];
    self.contentLab.textColor = [UIColor lightGrayColor];
    [self.baseView addSubview:self.contentLab];
}

#pragma mark # 布局约束
- (void)addingConstraints
{
    [self.baseView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.height.mas_equalTo(70).priorityHigh();
        make.top.equalTo(self.contentView).offset(0);
        make.left.equalTo(self.contentView).offset(0);
        make.bottom.equalTo(self.contentView).offset(0);
        make.right.equalTo(self.contentView).offset(0);
    }];
    
    [self.userHeadImageView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.equalTo(self.baseView).offset(10);
        make.left.equalTo(self.baseView).offset(20);
        make.bottom.equalTo(self.baseView).offset(-10);
        make.height.equalTo(self.userHeadImageView.mas_width).multipliedBy(1);
    }];
    
    [self.dateLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.equalTo(self.baseView).offset(-20);
        make.top.equalTo(self.userHeadImageView).offset(0);
    }];
    
    [self.userNameLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.userHeadImageView.mas_right).offset(15);
        make.top.equalTo(self.userHeadImageView).offset(0);
        make.right.equalTo(self.dateLab.mas_left).offset(-10);
    }];
    
    [self.contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.userNameLab).offset(0);
        make.bottom.equalTo(self.userHeadImageView).offset(0);
    }];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (!self.userHeadImageView.layer.cornerRadius) {
       
        [self.userHeadImageView layoutIfNeeded];
        self.userHeadImageView.layer.masksToBounds = YES;
        self.userHeadImageView.layer.cornerRadius = self.userHeadImageView.frame.size.height / 2.0;
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
