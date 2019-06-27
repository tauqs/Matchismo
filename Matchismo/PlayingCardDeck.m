//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Tauqueer Ahmad on 27/06/19.
//  Copyright © 2019 PSX. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck
-(id)init
{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                // No need to try to deal with the internal cards property...
                // Just use the existing methods to manipulate stuff!
                [self addCard:card atTop:YES];
            }
        }
    }
    return self;
}


@end
