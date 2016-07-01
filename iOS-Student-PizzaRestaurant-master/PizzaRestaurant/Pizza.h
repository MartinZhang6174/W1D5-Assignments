//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject 
typedef enum {
    small = 1,
    medium,
    large
}pizzaSize;

@property (nonatomic, assign, readonly) pizzaSize size;
@property (readonly) NSArray * pizzaToppings;

-(instancetype)initWithSize:(pizzaSize)size andToppings:(NSArray *)toppings;

@end
