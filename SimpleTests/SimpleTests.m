//
//  SimpleTests.m
//  SimpleTests
//
//  Created by Kyle Oba on 11/11/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SimpleTests : XCTestCase

@end

@implementation SimpleTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
