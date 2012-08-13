//
//  KIFTestScenario+ABCAdditions.m
//  SampleProjectFour
//
//  Created by Rodrigo Pizarro G. on 13-08-12.
//  Copyright (c) 2012 Excelsys. All rights reserved.
//

#import "KIFTestScenario+ABCAdditions.h"
#import "KIFTestStep.h"

@implementation KIFTestScenario (ABCAdditions)

+ (id)scenarioToSelectDifferentColors;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:[NSString stringWithFormat:@"Select the a few different colors."]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Purple"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Blue"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Red"]];
    
    return scenario;
}


@end
