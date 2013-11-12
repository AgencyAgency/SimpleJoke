//
//  AAViewController.m
//  Simple
//
//  Created by Kyle Oba on 11/11/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAViewController.h"
#import "Joker.h"

@interface AAViewController ()
@property (nonatomic, strong) Joker *joker;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@end

@implementation AAViewController

- (void)showNextJoke
{
    self.answerLabel.alpha = 0.0;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self showNextJoke];
}

- (IBAction)tellMePressed:(UIButton *)sender
{
    self.answerLabel.alpha = 1.0;
}

@end
