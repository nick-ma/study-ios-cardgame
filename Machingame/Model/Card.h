//
//  Card.h
//  Machingame
//
//  Created by Nick Ma on 14/5/14.
//  Copyright (c) 2014 Zhisiyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;
@end
