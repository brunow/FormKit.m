//
//  Genre.m
//  FormMappingExample
//
//  Created by Bruno Wernimont on 29/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Genre.h"

@implementation Genre

@synthesize name;



////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)genreWithName:(NSString *)newName {
    Genre *genre = [[Genre alloc] init];
    
    genre.name = newName;
    
    return genre;
}


@end
