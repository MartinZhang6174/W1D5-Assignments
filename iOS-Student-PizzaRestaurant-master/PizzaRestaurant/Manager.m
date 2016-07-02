//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"
#import "Kitchen.h"

@implementation Manager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(pizzaSize)size andToppings:(NSArray *)topping {
    if ((0 < size < 4) && topping.count > 0) {
        return true;
    }
    else {
        return FALSE;
    }
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    if(self) {
        return FALSE;
    } else {
        return TRUE;
    }
}

@end
