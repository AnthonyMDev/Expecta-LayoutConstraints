//
//  NSLayoutConstraint+EXPMatchesConstraint.m
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/2/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "NSLayoutConstraint+EXPMatchesConstraint.h"

@implementation NSLayoutConstraint (EXPMatchesConstraint)

- (BOOL)matchesConstraint:(NSLayoutConstraint *)expectedConstraint
{
  if (self.firstItem == expectedConstraint.firstItem &&
      self.firstAttribute == expectedConstraint.firstAttribute &&
      self.relation == expectedConstraint.relation &&
      self.secondItem == expectedConstraint.secondItem &&
      self.secondAttribute == expectedConstraint.secondAttribute &&
      self.multiplier == expectedConstraint.multiplier &&
      self.constant == expectedConstraint.constant) {
    return YES;
  }
  
  return NO;
}

@end
