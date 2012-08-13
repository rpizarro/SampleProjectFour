//
//  ABCAnotherTest.m
//  SampleProjectFour
//
//  Created by Rodrigo Pizarro G. on 10-08-12.
//  Copyright (c) 2012 Excelsys. All rights reserved.
//

#import "ABCViewController.h"
#import <GHUnitIOS/GHUnit.h>
#import <OCMock/OCMock.h>

@interface ABCAnotherTest : GHTestCase { }

@end

@implementation ABCAnotherTest

- (BOOL)shouldRunOnMainThread {
    // By default NO, but if you have a UI test or test dependent on running on the main thread return YES.
    // Also an async test that calls back on the main thread, you'll probably want to return YES.
    return NO;
}

- (void)setUpClass {
    // Run at start of all tests in the class
    GHTestLog(@"setting up class");
}

- (void)tearDownClass {
    // Run at end of all tests in the class
    GHTestLog(@"Tearing down class");
}

- (void)setUp {
    // Run before each test method
    GHTestLog(@"setting up");
}

- (void)tearDown {
    // Run after each test method
    GHTestLog(@"tearing down");
}

- (void)testFoo {
    NSString *a = @"foo";
    GHTestLog(@"I can log to the GHUnit test console: %@", a);
    
    // Assert a is not NULL, with no custom error description
    GHAssertNotNil(a, nil);
    
    // Assert equal objects, add custom error description
    NSString *b = @"bar";
    GHAssertEqualObjects(a, b, @"A custom error message. a should be equal to: %@.", b);
}


- (void)testOCMockPass {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mocktest", returnValue, @"Should have returned the expected string.");
}


- (void)testBar {
    // Another test
}

@end
