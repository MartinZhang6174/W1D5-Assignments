//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)topping {
    if ([topping containsObject:@"Anchovies"] || [topping containsObject:@"anchovies"]) {
        return NO;
    }
    return  YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
