//
//  main.m
//  Test4
//
//  Created by terzeron on 2014. 3. 26..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person* person = [Person alloc];
        person.firstName = @"James";
        person.lastName = @"Dean";
        person.adult = YES;
        NSLog(@"%@ %d", person.fullName, person.isAdult);
    }
    return 0;
}

