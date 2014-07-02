//
//  NSArray+containsConstraint.h
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/2/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/NSLayoutConstraint.h>

@interface NSArray (containsConstraint)

- (BOOL)containsConstraint:(NSLayoutConstraint *)expectedConstraint;

@end
