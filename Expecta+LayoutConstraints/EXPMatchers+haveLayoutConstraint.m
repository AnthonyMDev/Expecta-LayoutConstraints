//
//  EXPMatchers+haveLayoutConstraint.m
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/1/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "EXPMatchers+haveLayoutConstraint.h"

EXPMatcherImplementationBegin(haveLayoutConstraint, (NSLayoutConstraint *expected)) {
  
  match(^BOOL {
    
    for (NSLayoutConstraint *item in actual)
    {
      if (item.firstItem == expected.firstItem &&
          item.firstAttribute == expected.firstAttribute &&
          item.relation == expected.relation &&
          item.secondItem == expected.secondItem &&
          item.secondAttribute == expected.secondAttribute &&
          item.multiplier == expected.multiplier &&
          item.constant == expected.constant) {
        return YES;
      }
    }
    
    return NO;
  });
  
  failureMessageForTo(^NSString * {
    return @"The layout constraint is not found;";
  });
  
  failureMessageForNotTo(^NSString * {
    return @"The unexpected layout constraint was found in the given array.";
  });
}
EXPMatcherImplementationEnd
