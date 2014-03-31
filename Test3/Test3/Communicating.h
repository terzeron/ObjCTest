

#import <Foundation/Foundation.h>

@protocol Communicating <NSObject>
- (NSArray*) recipientsInRange;
- (void) sendMessage: (NSString*) message to:(id<Communicating>) recipient;
@end
