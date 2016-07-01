//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype)initWithSize:(pizzaSize)size andToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _pizzaToppings = toppings;
        _size = size;
    }
    return self;
}

@end
