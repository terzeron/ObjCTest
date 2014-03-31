//
//  Person.h
//  Test4
//
//  Created by terzeron on 2014. 3. 26..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString* firstName;
    NSString* secondName;
    BOOL adult;
}
@property (copy) NSString* firstName;
@property (copy) NSString* lastName;
@property (getter=isAdult) BOOL adult;
@property (readonly,nonatomic) NSString* fullName;
@end
