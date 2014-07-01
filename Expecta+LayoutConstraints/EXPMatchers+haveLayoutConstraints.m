//
//  EXPMatchers+haveLayoutConstraints.m
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/1/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "EXPMatchers+haveLayoutConstraints.h"

#import <UIKit/NSLayoutConstraint.h>

EXPMatcherImplementationBegin(haveLayoutConstraints, (NSArray *expected)) {
  
  match(^BOOL {
    
    for (NSLayoutConstraint *expectedConstraint in expected)
    {
      for (NSLayoutConstraint *actualConstraint in actual) {
        if (expectedConstraint.firstItem == actualConstraint.firstItem &&
            expectedConstraint.firstAttribute == actualConstraint.firstAttribute &&
            expectedConstraint.relation == actualConstraint.relation &&
            expectedConstraint.secondItem == actualConstraint.secondItem &&
            expectedConstraint.secondAttribute == actualConstraint.secondAttribute &&
            expectedConstraint.multiplier == actualConstraint.multiplier &&
            expectedConstraint.constant == actualConstraint.constant)
        {
          break;
        }
        return NO;
      }
    }
    
    return YES;
  });
  
  failureMessageForTo(^NSString * {
    return @"The layout constraints are not found;";
  });
  
  failureMessageForNotTo(^NSString * {
    return @"An unexpected layout constraint was found in the given array.";
  });
}

EXPMatcherImplementationEnd