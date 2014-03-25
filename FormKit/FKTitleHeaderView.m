//
// Created by Bruno Wernimont on 2012
// Copyright 2012 FormKit
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "FKTitleHeaderView.h"


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation FKTitleHeaderView

////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
    self = [super init];
    if (self) {
        self.textLabel = [[UILabel alloc] init];
        self.textLabel.backgroundColor = [UIColor clearColor];
        self.textLabel.numberOfLines = 0;
        self.textLabel.textColor = [UIColor grayColor];
        self.backgroundColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1];

        [self addSubview:self.textLabel];
    }
    return self;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect frame = CGRectZero;
    frame.origin.x = 10;
    frame.origin.y = 14;
    frame.size.width = self.frame.size.width - frame.origin.x*2;
    frame.size.height = [self.textLabel sizeThatFits:CGSizeMake(frame.size.width, CGFLOAT_MAX)].height;
    
    self.textLabel.frame = frame;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark FKTitleHeaderViewProtocol

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setHeaderTitle:(NSString *)title {
    self.textLabel.text = title;
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (CGFloat)heightForHeaderConstrainedByWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    return self.textLabel.frame.origin.y + self.textLabel.frame.size.height + 8;
}

@end
