//
//  Joker.m
//  Simple
//
//  Created by Kyle Oba on 11/11/13.
//  Copyright (c) 2013 Kyle Oba. All rights reserved.
//

#import "Joker.h"

@interface Joker ()
@property (nonatomic, assign) NSUInteger currentIndex;
@property (nonatomic, strong) NSArray *jokes;
@end

@implementation Joker

- (NSArray *)jokes
{
    if (!_jokes) {
        _jokes = @[
                   @{@"question": @"Why did the chicken cross the road?",
                     @"answer": @"To get to the other side."},
                   @{@"question": @"Why did the chicken cross the playground?",
                     @"answer": @"To get to the other slide."}
                   ];
    }
    return _jokes;
}

- (NSDictionary *)currentJoke
{
    return [self.jokes objectAtIndex:self.currentIndex];
}

- (NSString *)currentQuestion
{
    return [[self currentJoke] objectForKey:@"question"];
}

- (NSString *)currentAnswer
{
    return [[self currentJoke] objectForKey:@"answer"];
}

- (void)refreshJoke
{
    self.currentIndex = (self.currentIndex+1) % [self.jokes count];
}

@end
