//
//  CardGameViewController.m
//  Machingame
//
//  Created by Nick Ma on 14/5/14.
//  Copyright (c) 2014 Zhisiyun. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLable;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController
- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    
    NSLog(@"flip counts: %d", self.flipCount);
}
- (IBAction)touchCardButton:(UIButton *)sender {
//    UIImage *cardImage = [UIImage imageNamed:@"cardback"];
    if ([sender.currentTitle length] ) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
        
    }
    self.flipCount++;
    self.flipLable.text =[NSString stringWithFormat:@"次数: %d", self.flipCount] ;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
