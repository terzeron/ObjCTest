//
//  main.m
//  Test3
//
//  Created by terzeron on 2014. 3. 23..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Person* person = [[Person alloc] init];
        person.firstName = @"Obama";
        person.lastName = @"Barrack";
        person.adult = YES;
        NSLog(@"%@ %d", person.fullName, person.isAdult);
    }
    return 0;
}

