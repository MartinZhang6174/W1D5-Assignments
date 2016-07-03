//
//  main.m
//  Pig Latin
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+stringByPigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please input texts to convert them into Pig Latin version!");
        char userInput[50];
        fgets(userInput, 50, stdin);
        NSString *userInputAfterTrim = [[NSString stringWithUTF8String:userInput]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSArray *userInputAfterTokenization = [userInputAfterTrim componentsSeparatedByString:@" "];
        NSLog(@"%@",userInputAfterTokenization);

        for (int i=0; i<[userInputAfterTokenization count]; i++) {
            NSString* textInputElement = [userInputAfterTokenization objectAtIndex:i];
            NSString *pigLatin = [textInputElement turnIntoPigLatinVersion];
            
            NSLog(@"%@", pigLatin);

        }
//        NSInteger u;
//        [[userInputAfterTrim substringToIndex:i]substringToIndex:0];
//        if () {
////        }
//        NSString *firstInput = [userInputAfterTrim substringWithRange:NSMakeRange(0,3)];
//        NSLog(@"%@",firstInput);
    }
    return 0;
}




