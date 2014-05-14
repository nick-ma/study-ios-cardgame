//
//  Deck.h
//  Machingame
//
//  Created by Nick Ma on 14/5/14.
//  Copyright (c) 2014 Zhisiyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface Deck : NSObject
- (void) addCard: (Card *) card atTop:(BOOL)atTop;
- (void) addCard: (Card *) card;
- (Card *)drawRandomCard;
@end
