//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
@class Kitchen;

@interface Manager : NSObject <KitchenDelegate>

@end
