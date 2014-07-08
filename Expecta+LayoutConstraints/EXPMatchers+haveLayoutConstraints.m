//
//  EXPMatchers+haveLayoutConstraints.m
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/1/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "EXPMatchers+haveLayoutConstraints.h"

#import <UIKit/UIView.h>

EXPMatcherImplementationBegin(haveLayoutConstraints, (NSArray *expected)) {
  BOOL actualIsNil = (actual == nil);
  BOOL expectedIsNil = (expected == nil);
  BOOL actualIsCompatible = [actual isKindOfClass:[UIView class]];
  BOOL (^expectedIsCompatible)(id) = ^BOOL(id expected) {
    if(![expected isKindOfClass:[NSArray class]]) {
      return NO;
      
    } else {
      for (id item in expected) {
        if (![item isKindOfClass:[NSLayoutConstraint class]]) {
          return NO;
          
        }
      }
    }
    return YES;
  };
  
  prerequisite(^BOOL{
    return !actualIsNil && !expectedIsNil && actualIsCompatible && expectedIsCompatible;
  });
  
  match(^BOOL {
    
    
    for (NSLayoutConstraint *expectedConstraint in expected)
    {
      BOOL constraintMatched = NO;
      
        for (NSLayoutConstraint *actualConstraint in [actual constraints]) {
          
          if (actualConstraint.firstItem == expectedConstraint.firstItem &&
              actualConstraint.firstAttribute == expectedConstraint.firstAttribute &&
              actualConstraint.relation == expectedConstraint.relation &&
              actualConstraint.secondItem == expectedConstraint.secondItem &&
              actualConstraint.secondAttribute == expectedConstraint.secondAttribute &&
              actualConstraint.multiplier == expectedConstraint.multiplier &&
              actualConstraint.constant == expectedConstraint.constant) {
            
            constraintMatched = YES;
            break;
          }
        }
      if (!constraintMatched)
      {
        return NO;
      }
    }
    
    return YES;
  });
  
  failureMessageForTo(^NSString * {
    if (!actualIsCompatible) return [NSString stringWithFormat:@"%@ is not an instance of UIView",
                                     EXPDescribeObject(actual)];
    if (!expectedIsCompatible) return [NSString stringWithFormat:@"%@ is not an NSArray of NSLayoutConstraints",
                                       EXPDescribeObject(expected)];
    if (actualIsNil) return @"the actual value is nil/null";
    if (expectedIsNil) return @"the expected value is nil/null";
    
    return [NSString stringWithFormat:@"expected: constraints %@ to have layout constraints %@",
            EXPDescribeObject([actual constraints]),
            EXPDescribeObject(expected)];
  });
  
  failureMessageForNotTo(^NSString * {
    if (!actualIsCompatible) return [NSString stringWithFormat:@"%@ is not an instance of UIView",
                                     EXPDescribeObject(actual)];
    if (!expectedIsCompatible) return [NSString stringWithFormat:@"%@ is not an NSArray of NSLayoutConstraints",
                                       EXPDescribeObject(expected)];
    if (actualIsNil) return @"the actual value is nil/null";
    if (expectedIsNil) return @"the expected value is nil/null";
    
    return [NSString stringWithFormat:@"expected: constraints %@ not to have layout constraints %@",
            EXPDescribeObject([actual constraints]),
            EXPDescribeObject(expected)];
  });
}

EXPMatcherImplementationEnd