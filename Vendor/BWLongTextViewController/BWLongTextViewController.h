//
//  BWLongTextViewController.h
//  TrackingNumber
//
//  Created by Bruno Wernimont on 7/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BWLongTextViewController : UIViewController

@property (nonatomic, retain) UITextView *textView;
@property (nonatomic, retain) NSString *text;

- (id)initWithText:(NSString *)text;

@end
