//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "KitchenDelegate.h"
#import "Manager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        Manager *managerHatesAnchovies = [[Manager alloc] init];
        CheeryManager *cheeryManager = [[CheeryManager alloc] init];
        
      //  restaurantKitchen.delegate = cheeryManager;
        
        while (TRUE) {
            // Loop forever
            
            char managerString[20];
            NSLog(@"Which manager do you want? A cheery one or one who hates anchovies?\n A -- Cheery\n B -- Uncheery");
            fgets(managerString, 20, stdin);
            NSString *inputManager = [[[NSString alloc] initWithUTF8String:managerString] stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            if ([inputManager  isEqualToString: @"A"]) {
                restaurantKitchen.delegate = cheeryManager;
            } else if ([inputManager isEqualToString:@"B"]) {
                restaurantKitchen.delegate = managerHatesAnchovies;
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@">>> ");
            char str[100];
            fgets (str, 100, stdin);
            
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            NSString *sizeCommand = [commandWords firstObject];
            
            
            int size;
            if([sizeCommand isEqualToString:@"small"]) {
                size = 1;
            } else if([sizeCommand isEqualToString:@"medium"]) {
                size = 2;
            } else if([sizeCommand isEqualToString:@"large"]) {
                size = 3;
            }
            PizzaSize targetSize = size;
            NSMutableArray *targetToppings = [[NSMutableArray alloc] init];
            
            for (int i = 1; i < [commandWords count]; i++) {
                [targetToppings addObject:commandWords[i]];
            }
                [restaurantKitchen makePizzaWithSize:targetSize toppings:targetToppings];

    }
    return 0;
    }
    
}

