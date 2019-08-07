//
//  PigLatin.m
//  PigLatin
//
//  Created by Mona Shamsolebad on 2019-08-07.
//  Copyright © 2019 Mona Shamsolebad. All rights reserved.
//

#import "PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *) pigLatin
{
    return [self stringByAppendingString:@"ay"];
}


@end
