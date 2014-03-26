//
//  main.m
//  Test3
//
//  Created by terzeron on 2014. 3. 23..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


//
// function
//
NSDate* earlierDate(NSDate* a, NSDate* b)
{
    if (a == nil) {
        return b;
    }
    if (b == nil || [a compare:b] == NSOrderedAscending) {
        return a;
    }
    return b;
}


int main(int argc, const char * argv[])
{
    @autoreleasepool {

        //
        // enum
        //
        enum { Zero = 0, One, Two } x = One;
        NSLog(@"x=%d\n", x);
        
        //
        // typedef
        //
        typedef int PartCode;
        PartCode pc = 3;
        NSLog(@"partcode=%d\n", pc);

        typedef enum {
            Strawberry,
            Rhubarb,
            Apricot
        } Flavor;
        Flavor f = Strawberry;
        if (f == Strawberry) {
            NSLog(@"Strawberry");
        }
        
        //
        // pointer
        //
        int i = 1;
        int* iptr;
        NSLog(@"i=%d, &i=%p, iptr=%p\n", i, &i, iptr);
        iptr = &i;
        NSLog(@"i=%d, &i=%p, iptr=%p\n", i, &i, iptr);
        *iptr = 2;
        NSLog(@"i=%d, &i=%p, iptr=%p\n", i, &i, iptr);
        
        //
        // function
        //
        NSTimeInterval secondsPerDay = 24 * 60 * 60;
        NSDate* today = [[NSDate alloc] init];
        NSDate* tomorrow = [[NSDate alloc] initWithTimeIntervalSinceNow: secondsPerDay];
        NSDate* yesterday = [[NSDate alloc] initWithTimeIntervalSinceNow: -secondsPerDay];
        NSLog(@"%@\n", earlierDate(today, tomorrow));
        NSLog(@"%@\n", earlierDate(today, yesterday));
        
        //
        // control flow
        //
        int segment[100][100];
        int optimalLength = 200000;
        int lineLength = 0;
        int bestFit = 0;
        for (int i=0; i<100; i++) {
            lineLength = 0;
            for (int j=0; j<100; j++) {
                int s = segment[i][j];
                if (s==0) {
                    break;
                }
                lineLength += segment[i][j];
                if (lineLength>optimalLength) {
                    goto nextLine;
                }
                if (lineLength==optimalLength) {
                    goto stop;
                }
                if (lineLength>bestFit) {
                    bestFit = lineLength;
                }
            }
        nextLine:
            NSLog(@"next, %d\n", lineLength);
            ;
        }
    stop:
        NSLog(@"stopped, %d\n", lineLength);
        
        //
        // class
        //
        Person* person = [[Person alloc] init];
        person.firstName = @"James";
        person.lastName = @"Dean";
        person.adult = YES;
        NSLog(@"%@ %d", person.fullName, person.isAdult);
    }
    return 0;
}

