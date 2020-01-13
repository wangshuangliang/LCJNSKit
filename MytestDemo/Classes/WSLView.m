//
//  WSLView.m
//  WSLUIKit
//
//  Created by admin on 2020/1/12.
//  Copyright © 2020 admin. All rights reserved.
//

#import "WSLView.h"

@implementation WSLView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        UIView * view = [[UIView alloc] initWithFrame:CGRectMake(5, 5, self.frame.size.width - 10, self.frame.size.height - 10)];
        view.backgroundColor = [UIColor yellowColor];
        [self addSubview:view];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
