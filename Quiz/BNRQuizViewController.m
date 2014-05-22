//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Sandquist, Cassandra G on 5/22/14.
//  Copyright (c) 2014 robotwholearned. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@end

@implementation BNRQuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.questions = @[@"Q1: Whatever?",@"Q2: What is your quest?",@"Q3: Whos the boss?"];
        self.answers = @[@"A1: Wevs",@"A2: To find the holy grail",@"A3: You are"];
    }
    return self;
}

-(IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    self.questionLabel.text = self.questions[self.currentQuestionIndex];
    self.answerLabel.text = @"???";
}
-(IBAction)showAnswer:(id)sender
{
    self.answerLabel.text = self.answers[self.currentQuestionIndex];
}
@end
