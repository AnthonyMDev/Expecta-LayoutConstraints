//
//  NSArray+containsConstraint.m
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/2/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "NSArray+containsConstraint.h"

#import "NSLayoutConstraint+EXPMatchesConstraint.h"

@implementation NSArray (containsConstraint)

- (BOOL)containsConstraint:(NSLayoutConstraint *)expectedConstraint
{
  for (NSLayoutConstraint *actualConstraint in self) {
    if ([actualConstraint EXPmatchesConstraint:expectedConstraint]) return YES;
  }
  return NO;
}

@end
