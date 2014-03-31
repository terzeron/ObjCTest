//
//  Person.m
//  Test4
//
//  Created by terzeron on 2014. 3. 26..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize firstName;
@synthesize lastName = secondName;
@synthesize adult;
- (NSString*) fullName
{
    return [NSString stringWithFormat:@"%@ %@", firstName, secondName];
}

@end
