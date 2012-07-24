//
//  Movie.m
//  FormMappingExample
//
//  Created by Bruno Wernimont on 29/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Movie.h"

#import "Genre.h"

@implementation Movie

@synthesize title, content, releaseDate, numberOfActor, suitAllAges, genre, password, shortName, choice, rate;


////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)movieWithTitle:(NSString *)newTitle content:(NSString *)newContent {
    Movie *movie = [[Movie alloc] init];
    
    movie.title = newTitle;
    movie.content = newContent;
    
    return movie;
}


////////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString *)description {
    return [NSString stringWithFormat:
            @"title = %@, content = %@, releaseDate = %@, numberOfActor = %@, suitAllAges = %@, genre = %@, password = %@, shortName = %@, choice = %@, rate = %@",
            self.title, self.content, self.releaseDate, self.numberOfActor, self.suitAllAges, self.genre, self.password, self.shortName, self.choice, self.rate];
}


@end
