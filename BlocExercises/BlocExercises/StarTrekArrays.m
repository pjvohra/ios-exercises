//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSArray *Alphabetizedarray = [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    return Alphabetizedarray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

    for (NSString *characterName in characterArray) {
        NSString *lowercaseName = characterName.lowercaseString;
        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
        if (worfRange.location != NSNotFound) {
            return YES;
     
        }
    }
    
    return NO;
}
    
    

@end
