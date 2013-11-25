//
//  ViewController.m
//  RFPasswordGenerator
//
//  Created by Ricardo Funk on 11/25/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "ViewController.h"
#import "RFPasswordGenerator.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *displayPassword;
@property (nonatomic) int selectedSecurity;

- (IBAction)choosePasswordStrength:(UISegmentedControl *)sender;
- (IBAction)generateRandomPassword:(id)sender;

@end

@implementation ViewController

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

- (IBAction)choosePasswordStrength:(UISegmentedControl *)sender {
    self.selectedSecurity = sender.selectedSegmentIndex;
}

- (IBAction)generateRandomPassword:(id)sender {
    if (self.selectedSecurity == 0) {
        self.displayPassword.text = [RFPasswordGenerator generateLowSecurityPassword];
    } else if (self.selectedSecurity == 1) {
        self.displayPassword.text = [RFPasswordGenerator generateMediumSecurityPassword];
    } else if (self.selectedSecurity == 2) {
        self.displayPassword.text = [RFPasswordGenerator generateHighSecurityPassword];
    }
}
@end
