//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-03.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

// This manager hates anchovies so much that he refuses to bake pizza with such topping.

@interface Manager : NSObject <KitchenDelegate>

@end
