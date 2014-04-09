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

#import "FKTextField.h"


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
@implementation FKTextField

@synthesize textField = _textField;


////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.customTextFieldClass = [UITextField class];
    }
    return self;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setCustomTextFieldClass:(Class)customTextFieldClass {
    if (_customTextFieldClass != customTextFieldClass) {
        _customTextFieldClass = customTextFieldClass;
        
        _textField = [[self.customTextFieldClass alloc] init];
        
        self.textField.textAlignment = NSTextAlignmentRight;
        
        [self.textField addTarget:self
                           action:@selector(textFieldDidChangeValue)
                 forControlEvents:UIControlEventAllEditingEvents];
        
        self.valueView = self.textField;
    }
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)prepareForReuse {
    [super prepareForReuse];
    
    [self.textField removeTarget:nil action:NULL forControlEvents:UIControlEventAllEvents];
    self.textField.placeholder = nil;
    self.textField.text = nil;
    self.textField.delegate = nil;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)textFieldDidChangeValue {
    
}


////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark FKFieldStyleProtocol


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setValueTextAlignment:(NSTextAlignment)valueTextAligment {
    self.textField.textAlignment = valueTextAligment;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setValueTextColor:(UIColor *)color {
    self.textField.textColor = color;
}


@end
