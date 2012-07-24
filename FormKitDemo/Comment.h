//
//  Comment.h
//  FormMappingExample
//
//  Created by Bruno Wernimont on 29/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Comment : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *comment;

+ (id)commentWithName:(NSString *)name comment:(NSString *)comment;

@end
