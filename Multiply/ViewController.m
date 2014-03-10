//
//  ViewController.m
//  Multiply
//
//  Created by Jaime Hernandez on 3/10/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *myNumber;
@property (strong, nonatomic) IBOutlet UILabel *myMultiplier;
@property (strong, nonatomic) IBOutlet UILabel *myAnswer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
 
    // make the strings ints
    
    int inputNumber = [self.myNumber.text intValue];
    int multiplier  = [self.myMultiplier.text intValue];
    int answer      = [self.myAnswer.text intValue];
    
    answer = inputNumber * multiplier;
    
    // make the answer a string to display -- Thank you Google!
    NSString *displayAnswer = [NSString stringWithFormat:@"%d",answer];
    
    
    self.myAnswer.text = [NSString stringWithFormat:displayAnswer];
    
    if (answer > 20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        // refresh
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
