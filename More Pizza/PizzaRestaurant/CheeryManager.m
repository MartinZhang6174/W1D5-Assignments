//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-10.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping {
    NSLog(@"You're always welcome to come again, my friend!");
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end
