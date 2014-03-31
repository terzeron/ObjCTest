
#import <Foundation/Foundation.h>
#import "Thing.h"
#import "Living.h"
#import "Communicating.h"

@interface Character : Thing <Living, Communicating>
@property float age;
@property float health;
@property NSDictionary* healthInfo;
@property NSArray* recipientsInRange;
@end
