//
//  ViewController.m
//  Matchismo
//
//  Created by Tauqueer Ahmad on 24/06/19.
//  Copyright © 2019 PSX. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck
{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *) createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length]){
        UIImage *cardImage = [UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        UIImage *cardImage = [UIImage imageNamed:@"cardfront"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"A ♠️" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
