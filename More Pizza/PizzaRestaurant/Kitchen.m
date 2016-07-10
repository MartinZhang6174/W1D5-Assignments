//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSMutableArray *)toppings {
    BOOL shouldMakeDatPizza = [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
    BOOL shouldUpgradDatPizza = [self.delegate kitchenShouldUpgradeOrder:self];
    if ((shouldMakeDatPizza == true) && (shouldUpgradDatPizza == false)) {
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
        Pizza *pizzaMadeByOrder = [[Pizza alloc]initWithSize:size andToppings:toppings];
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [self.delegate kitchenDidMakePizza:pizzaMadeByOrder];
        }
//        for (NSString *topping in toppings) {
//            NSLog(@"%@", topping);
//        }
        NSLog(@"Your %@ %@ pizza is ready!", sizeString, [toppings componentsJoinedByString:@" "]);
        
        return [[Pizza alloc] initWithSize:size andToppings:toppings];
    }else if(shouldMakeDatPizza == false) {
        NSLog(@"Unable to make such pizza.");
        return nil;
    } else if (shouldUpgradDatPizza == true) {
        NSLog(@"Congrats! We just upgraded your pizza to large!");
        NSLog(@"Your large %@ pizza is ready!", [toppings componentsJoinedByString:@" "]);
        
        return [[Pizza alloc] initWithSize:large andToppings:toppings];
    }
    return 0;
}

@end
