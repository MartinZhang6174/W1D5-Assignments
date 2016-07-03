//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize) {
    small = 1,
    medium,
    large
};

@interface Pizza : NSObject 


@property (nonatomic, assign, readonly) PizzaSize size;
@property (readonly) NSArray * pizzaToppings;

-(instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray *)toppings;

@end
