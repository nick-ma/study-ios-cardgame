//
//  PlayingCard.m
//  Machingame
//
//  Created by Nick Ma on 14/5/14.
//  Copyright (c) 2014 Zhisiyun. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;

+ (NSArray *) rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}
//重写父类里面的contents这个属性的getter
- (NSString *) contents{
    NSArray *rankString = [PlayingCard rankStrings];
//    调用string的stringByAppendingString方法来组合出需要的string。
    return [rankString[self.rank] stringByAppendingString:self.suit];
    
//    [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
}

+ (NSArray *) validSuits{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

-(void) setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
    
}

-(NSString *) suit{
    return _suit? _suit : @"?";
}
+ (NSUInteger)maxRank{
    return [[PlayingCard rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank{
    if (rank>=1 && rank <=[PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
