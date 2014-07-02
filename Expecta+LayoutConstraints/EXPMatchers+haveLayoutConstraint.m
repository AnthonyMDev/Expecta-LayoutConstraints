//
//  EXPMatchers+haveLayoutConstraint.m
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/1/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "EXPMatchers+haveLayoutConstraint.h"

#import "NSLayoutConstraint+EXPMatchesConstraint.h"

EXPMatcherImplementationBegin(haveLayoutConstraint, (NSLayoutConstraint *expected)) {
  BOOL actualIsNil = (actual == nil);
  BOOL expectedIsNil = (expected == nil);
  BOOL actualIsCompatible = [actual isKindOfClass:[UIView class]];

  match(^BOOL {
    
    for (NSLayoutConstraint *actualConstraint in [actual constraints])
    {
      if ([expected matchesConstraint:actualConstraint]) {
        return YES;
      }
    }
    return NO;
  });
  
  failureMessageForTo(^NSString * {
    if (!actualIsCompatible) return [NSString stringWithFormat:@"%@ is not an instance of UIView",
                                     EXPDescribeObject(actual)];
    if (actualIsNil) return @"the actual value is nil/null";
    if (expectedIsNil) return @"the expected value is nil/null";
    
    return [NSString stringWithFormat:@"expected: %@ to have layout constraint %@", EXPDescribeObject(actual), EXPDescribeObject(expected)];
  });
  
  failureMessageForNotTo(^NSString * {
    if (!actualIsCompatible) return [NSString stringWithFormat:@"%@ is not an instance of UIView",
                                     EXPDescribeObject(actual)];
    if (actualIsNil) return @"the actual value is nil/null";
    if (expectedIsNil) return @"the expected value is nil/null";
    
    return [NSString stringWithFormat:@"expected: %@ not to have layout constraint %@", EXPDescribeObject(actual), EXPDescribeObject(expected)];
  });
}
EXPMatcherImplementationEnd
