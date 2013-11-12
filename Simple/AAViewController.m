//
//  AAViewController.m
//  Simple
//
//  Created by Kyle Oba on 11/11/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "AAViewController.h"

@interface AAViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIButton *tellMeButton;
@property (nonatomic, strong) NSArray *questions;
@property (nonatomic, strong) NSArray *answers;
@property (nonatomic, assign) NSUInteger currentIndex;
@end

@implementation AAViewController

- (NSArray *)questions
{
    if (!_questions) {
        _questions = @[@"Why did the chicken cross the road?",
                       @"Why did the chicken cross the playground?"];
    }
    return _questions;
}

- (NSArray *)answers
{
    if (!_answers) {
        _answers = @[@"To get to the other side.",
                     @"To get to the other slide."];
    }
    return _answers;
}

- (void)showNextJoke
{
    self.questionLabel.text = [self.questions objectAtIndex:self.currentIndex];
    self.answerLabel.text = [self.answers objectAtIndex:self.currentIndex];
    self.answerLabel.alpha = 0.0;
    self.currentIndex = (self.currentIndex + 1) % [self.questions count];
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
        // Show punchline!
        self.answerLabel.alpha = 1.0;
        [self.tellMeButton setTitle:@"Next joke."
                           forState:UIControlStateNormal];
    } else {
        // Load another joke.
        [self showNextJoke];
        [self.tellMeButton setTitle:@"Tell me."
                           forState:UIControlStateNormal];
    }
}

@end
