#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSDate *releaseDate;
@property (nonatomic, retain) NSNumber *numberOfActor;
@property (nonatomic, retain) NSNumber *suitAllAges;
@property (nonatomic, retain) NSString *password;
@property (nonatomic, retain) NSString *shortName;
@property (nonatomic, retain) NSString *choice;
@property (nonatomic, retain) NSNumber *rate;

+ (id)bookWithTitle:(NSString *)title content:(NSString *)content;

@end
