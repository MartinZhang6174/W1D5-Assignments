//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(pizzaSize)size toppings:(NSMutableArray *)toppings
{
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        
        NSString *sizeString;
        switch (size) {
            case 1:
                sizeString = @"small";
                break;
            case 2:
                sizeString = @"medium";
                break;
            case 3:
                sizeString = @"large";
                break;
            default:
                break;
        }
        return [[Pizza alloc] initWithSize:size andToppings:toppings];
        NSLog(@"Your %@ %@ pizza is ready!", sizeString, toppings);
    }
    else {
        NSLog(@"Unable to make such pizza.");
        return nil;
    }
}

@end
