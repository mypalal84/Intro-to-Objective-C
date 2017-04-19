//
//  AddEmployeeViewController.m
//  Week-6-Lab
//
//  Created by A Cahn on 4/19/17.
//  Copyright © 2017 A Cahn. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"

@interface AddEmployeeViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployed;
@property (weak, nonatomic) IBOutlet UITextField *managerName;
@property (weak, nonatomic) IBOutlet UITextField *email;

- (IBAction)saveButtonPressed:(UIButton *)sender;

- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}



- (IBAction)saveButtonPressed:(UIButton *)sender {
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [[self presentingViewController] dismissViewControllerAnimated:NO completion:nil];
}
@end
