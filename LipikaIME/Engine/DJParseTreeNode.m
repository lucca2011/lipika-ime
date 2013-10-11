/*
 * LipikaIME a user-configurable phonetic Input Method Engine for Mac OS X.
 * Copyright (C) 2013 Ranganath Atreya
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "DJParseTreeNode.h"

@implementation DJParseTreeNode

@synthesize input;
@synthesize output;
@synthesize next;

-(NSString*)description {
    return [NSString stringWithFormat:@"Output: %@; Next: %@", output, [next description]];
}

extern NSMutableArray* charactersForString(NSString *string) {
    NSRange theRange = {0, 1};
    NSMutableArray* array = [NSMutableArray array];
    for ( NSInteger i = 0; i < [string length]; i++) {
        theRange.location = i;
        [array addObject:[string substringWithRange:theRange]];
    }
    return array;
}

@end
