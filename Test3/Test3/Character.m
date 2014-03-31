
#import "Character.h"

@implementation Character
@synthesize age;
@synthesize health;
@synthesize healthInfo;
@synthesize recipientsInRange;
- (void) sendMessage: (NSString*) message to:(id<Communicating>) recipient
{
    
}
@end
