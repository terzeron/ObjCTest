//
//  TemperatureConverterTests.m
//  TemperatureConverterTests
//
//  Created by terzeron on 2015. 10. 12..
//  Copyright © 2015년 NHN Entertainment. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TemperatureConverterTests : XCTestCase

@end

@implementation TemperatureConverterTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue(YES, @"OCUnit should pass this test.");
    XCTAssert(1 == 1, @"simple expression");
    XCTAssert(1 == 2, @"simple expression");

    XCTFail(@"fail");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
