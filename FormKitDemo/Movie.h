//
//  Movie.h
//  FormMappingExample
//
//  Created by Bruno Wernimont on 29/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Genre;

@interface Movie : NSObject

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSDate *releaseDate;
@property (nonatomic, retain) NSNumber *numberOfActor;
@property (nonatomic, retain) NSNumber *suitAllAges;
@property (nonatomic, retain) Genre *genre;
@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *shortName;
@property (nonatomic, retain) NSString *choice;
@property (nonatomic, retain) NSNumber *rate;

+ (id)movieWithTitle:(NSString *)title content:(NSString *)content;

@end
