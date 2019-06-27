//
//  Deck.h
//  Matchismo
//
//  Created by Tauqueer Ahmad on 26/06/19.
//  Copyright © 2019 PSX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
