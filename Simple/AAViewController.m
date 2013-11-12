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
@property (weak, nonatomic) IBOutlet UIButton *tellMeButton;
@end

@implementation AAViewController

- (Joker *)joker
{
    if (!_joker) {
        _joker = [[Joker alloc] init];
    }
    return _joker;
}

- (void)showNextJoke
{
    self.questionLabel.text = [self.joker currentQuestion];
    self.answerLabel.text = [self.joker currentAnswer];
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
    if (self.answerLabel.alpha != 1.0) {
        // Show the punchline!
        self.answerLabel.alpha = 1.0;
        [self.tellMeButton setTitle:@"Next joke."
                           forState:UIControlStateNormal];
    } else {
        [self.joker refreshJoke];
        [self showNextJoke];
        [self.tellMeButton setTitle:@"Tell me."
                           forState:UIControlStateNormal];
    }
}

@end
