//
//  Card.h
//  Matchismo
//
//  Created by Tauqueer Ahmad on 26/06/19.
//  Copyright © 2019 PSX. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)cards
{
    int score = 0;
    for (Card *card in cards)
    {
        if([[card contents] isEqualToString:[self contents]])
        {
            score = 1;
        }
    }
    return score;
}

@end

