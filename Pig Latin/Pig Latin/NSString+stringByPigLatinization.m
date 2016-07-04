//
//  NSString+stringByPigLatinization.m
//  Pig Latin
//
//  Created by Martin Zhang on 2016-07-01.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "NSString+stringByPigLatinization.h"

@implementation NSString (stringByPigLatinization)

-(instancetype)turnIntoPigLatinVersion {
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSRange vowelRange = [self rangeOfCharacterFromSet:(NSCharacterSet*) vowels];
    if (vowelRange.location == NSNotFound) {
        NSLog(@"The first character is not a consonant but a vowel.");
    } else {
        NSString *leftPart = [self substringToIndex:vowelRange.location];
        NSString *rightPart = [self substringFromIndex:vowelRange.location];
        NSString *ending = @"ay";
        NSString *resultString = [NSString stringWithFormat:@"%@%@%@",rightPart,leftPart,ending];
        return resultString;
    }

    return self;
// 1) character set with vowels 
// 2) [self rangeOfCharacter...] -> range of first vowel (or range.location == NSNotFound)
// 3) [self substringToIndex:range.location] --> left part
// 4) [self substringFromIndex:range.location] --> right part
// 5) return string = right part + left part + ending
    
}

@end
