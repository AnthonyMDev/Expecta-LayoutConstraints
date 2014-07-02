//
//  NSLayoutConstraint+EXPMatchesConstraint.h
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/2/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import <UIKit/NSLayoutConstraint.h>

@interface NSLayoutConstraint (EXPMatchesConstraint)

- (BOOL) matchesConstraint:(NSLayoutConstraint *)expectedConstraint;

@end
