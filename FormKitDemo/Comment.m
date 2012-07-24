//
//  Comment.m
//  FormMappingExample
//
//  Created by Bruno Wernimont on 29/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Comment.h"

@implementation Comment

@synthesize name, comment;


////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)commentWithName:(NSString *)newName comment:(NSString *)newComment {
    Comment *theComment = [[Comment alloc] init];
    
    theComment.name = newName;
    theComment.comment = newComment;
    
    return theComment;
}


@end
