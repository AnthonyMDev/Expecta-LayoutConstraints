//
//  EXPMatchers+haveLayoutConstraint.h
//  Expecta+LayoutConstraints
//
//  Created by Anthony Miller on 7/1/14.
//  Copyright (c) 2014 App-Order. All rights reserved.
//

#import "Expecta.h"

#import <UIKit/UIKit.h>

EXPMatcherInterface(haveLayoutConstraint, (NSLayoutConstraint *expected));

#define hasLayoutConstraint haveLayoutConstraint
