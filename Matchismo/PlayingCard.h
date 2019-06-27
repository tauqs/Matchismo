//
//  PlayingCard.h
//  Matchismo
//
//  Created by Tauqueer Ahmad on 26/06/19.
//  Copyright © 2019 PSX. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSArray *)maxRank;
@end

