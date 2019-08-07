//
//  main.m
//  PigLatin
//
//  Created by Mona Shamsolebad on 2019-08-07.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"

NSString *getUserInput (int maxLenght, NSString *prompt)
{
    if (maxLenght < 1)
    {
        maxLenght = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if (result != NULL)
    {
        NSMutableString *inputStr = [NSMutableString stringWithUTF8String:inputChars];
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES)
        {
            NSString *menu = getUserInput(255, @"\n1 -> Type word.\n2 -> Exit.");
            if ([menu isEqualToString:@"2"])
            {
                NSLog(@"\n ++== Bye! ==++");
                break;
            } else if ([menu isEqualToString:@"1"])
            {
                NSMutableString *input = [NSMutableString stringWithString: getUserInput(255, @"Type the word: ")];
                // put all rules here
                
                //NSString *englishAlphabet = @"[A-Za-z]+";
                NSCharacterSet* letters = [NSCharacterSet characterSetWithRange:NSMakeRange('a', 26)];
                NSCharacterSet* notLetters = [letters invertedSet];
                NSRange badCharacterRange = [input rangeOfCharacterFromSet:notLetters];
                if (badCharacterRange.location != NSNotFound)
                {
                    NSLog(@"\n Only letters are allowed.");
                } else
                {
                    NSString *upperCaseInput = [input uppercaseString];
                    //NSArray *vowel = [NSArray arrayWithObjects: @"A", @"E", @"I", @"O", @"U", nil];
                    if ([upperCaseInput hasPrefix:@"A"]
                        || [upperCaseInput hasPrefix:@"E"]
                        || [upperCaseInput hasPrefix:@"I"]
                        || [upperCaseInput hasPrefix:@"O"]
                        || [upperCaseInput hasPrefix:@"U"])
                    {
                        NSLog(@"\n%@%@", input, [@"w" pigLatin]);
                    } else if ([upperCaseInput hasPrefix:@"B"]
                               || [upperCaseInput hasPrefix:@"C"]
                               || [upperCaseInput hasPrefix:@"D"]
                               || [upperCaseInput hasPrefix:@"F"]
                               || [upperCaseInput hasPrefix:@"G"]
                               || [upperCaseInput hasPrefix:@"H"]
                               || [upperCaseInput hasPrefix:@"J"]
                               || [upperCaseInput hasPrefix:@"K"]
                               || [upperCaseInput hasPrefix:@"L"]
                               || [upperCaseInput hasPrefix:@"M"]
                               || [upperCaseInput hasPrefix:@"N"]
                               || [upperCaseInput hasPrefix:@"P"]
                               || [upperCaseInput hasPrefix:@"Q"]
                               || [upperCaseInput hasPrefix:@"R"]
                               || [upperCaseInput hasPrefix:@"S"]
                               || [upperCaseInput hasPrefix:@"T"]
                               || [upperCaseInput hasPrefix:@"V"]
                               || [upperCaseInput hasPrefix:@"W"]
                               || [upperCaseInput hasPrefix:@"Y"]
                               || [upperCaseInput hasPrefix:@"Z"])
                    {
                        NSMutableString *print = [NSMutableString stringWithString: input];
                        if ([upperCaseInput hasPrefix:@"BL"]
                            || [upperCaseInput hasPrefix:@"BR"]
                            || [upperCaseInput hasPrefix:@"CH"]
                            || [upperCaseInput hasPrefix:@"CL"]
                            || [upperCaseInput hasPrefix:@"CR"]
                            || [upperCaseInput hasPrefix:@"DR"]
                            || [upperCaseInput hasPrefix:@"FL"]
                            || [upperCaseInput hasPrefix:@"FR"]
                            || [upperCaseInput hasPrefix:@"GL"]
                            || [upperCaseInput hasPrefix:@"GR"]
                            || [upperCaseInput hasPrefix:@"PL"]
                            || [upperCaseInput hasPrefix:@"PR"]
                            || [upperCaseInput hasPrefix:@"SC"]
                            || [upperCaseInput hasPrefix:@"SH"]
                            || [upperCaseInput hasPrefix:@"SK"]
                            || [upperCaseInput hasPrefix:@"SL"]
                            || [upperCaseInput hasPrefix:@"SM"]
                            || [upperCaseInput hasPrefix:@"SN"]
                            || [upperCaseInput hasPrefix:@"SP"]
                            || [upperCaseInput hasPrefix:@"ST"]
                            || [upperCaseInput hasPrefix:@"SW"]
                            || [upperCaseInput hasPrefix:@"TH"]
                            || [upperCaseInput hasPrefix:@"TR"]
                            || [upperCaseInput hasPrefix:@"TW"]
                            || [upperCaseInput hasPrefix:@"WH"]
                            || [upperCaseInput hasPrefix:@"WR"])
                        {
                            [print deleteCharactersInRange:NSMakeRange(0, 2)];
                            NSString *print2;
                            print2 = [input substringWithRange: NSMakeRange (0, 2)];
                            NSUInteger len = [input length] - 2;
                            [print insertString: print2 atIndex: len];
                            //                            NSLog(@"%lu", len);
                            //                            NSLog (@"print2 = %@", print2);
                            
                            NSLog(@"\n%@", [print pigLatin]);
                            
                        } else if ([upperCaseInput hasPrefix:@"SCH"]
                                   || [upperCaseInput hasPrefix:@"SCR"]
                                   || [upperCaseInput hasPrefix:@"SHR"]
                                   || [upperCaseInput hasPrefix:@"SPH"]
                                   || [upperCaseInput hasPrefix:@"SPL"]
                                   || [upperCaseInput hasPrefix:@"SPR"]
                                   || [upperCaseInput hasPrefix:@"SQU"]
                                   || [upperCaseInput hasPrefix:@"STR"]
                                   || [upperCaseInput hasPrefix:@"THR"])
                        {
                            [print deleteCharactersInRange:NSMakeRange(0, 3)];
                            NSString *print2;
                            print2 = [input substringWithRange: NSMakeRange (0, 3)];
                            NSUInteger len = [input length] - 3;
                            [print insertString: print2 atIndex: len];
                            //NSLog(@"%lu", len);
                            //NSLog (@"print2 = %@", print2);
                            
                            NSLog(@"\n%@", [print pigLatin]);
                            
                        } else
                        {
                            [print deleteCharactersInRange:NSMakeRange(0, 1)];
                            NSString *print2;
                            print2 = [input substringWithRange: NSMakeRange (0, 1)];
                            NSUInteger len = [input length] - 1;
                            [print insertString: print2 atIndex: len];
                            //NSLog(@"%lu", len);
                            //NSLog (@"print2 = %@", print2);
                            
                            NSLog(@"\n%@", [print pigLatin]);
                        }
                    }
                }
            } else if ([menu isNotEqualTo: @"1"] || [menu isNotEqualTo: @"2"])
            {
                NSLog(@"\n You need choose between 1 or 2.");
            }
        }
    }
    return 0;
}
