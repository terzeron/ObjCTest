//
//  Storing.h
//  Test3
//
//  Created by terzeron on 2014. 3. 26..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Storing <NSObject>
- (NSDictionary*) inventory;
- (BOOL) giveItem: (Thing*) item to:(id<Storing>) recipient;
- (BOOL) acceptItem: (Thing*) item from:(id<Storing>) recipient;
@end
