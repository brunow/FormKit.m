#import "Book.h"

@implementation Book

@synthesize title, content, releaseDate, numberOfActor, suitAllAges, password, shortName, choice, rate;


////////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)bookWithTitle:(NSString *)newTitle content:(NSString *)newContent {
    Book *book = [[Book alloc] init];
    
    book.title = newTitle;
    book.content = newContent;
    
    return book;
}


@end
