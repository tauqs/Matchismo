//
//  Card.h
//  Matchismo
//
//  Created by Tauqueer Ahmad on 26/06/19.
//  Copyright © 2019 PSX. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;
@end

