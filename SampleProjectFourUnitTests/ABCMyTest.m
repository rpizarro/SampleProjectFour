//
//  ABCMyTest.m
//  SampleProjectFour
//
//  Created by Rodrigo Pizarro G. on 10-08-12.
//  Copyright (c) 2012 Excelsys. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>


@interface ABCMyTest : GHTestCase { }
@end

@implementation ABCMyTest

- (void)testStrings {
    NSString *string1 = @"a string";
    GHTestLog(@"I can log to the GHUnit test console: %@", string1);
    
    // Assert string1 is not NULL, with no custom error description
    GHAssertNotNil(string1, nil);
    
    // Assert equal objects, add custom error description
    NSString *string2 = @"a string";
    GHAssertEqualObjects(string1, string2, @"A custom error message. string1 should be equal to: %@.", string2);
}

@end
